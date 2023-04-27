#include "ir2json.h"

namespace ir2json
{
    static std::string get_indent(int indent)
    {
        std::string ret;
        for (int i = 0; i < indent; i++)
            ret += "\t";
        return ret;
    }

    static bool is_basic_type(llvm::DIType *type)
    {
        switch (type->getTag())
        {
        case llvm::dwarf::DW_TAG_base_type:
        case llvm::dwarf::DW_TAG_pointer_type:
            return true;
        case llvm::dwarf::DW_TAG_const_type:
        case llvm::dwarf::DW_TAG_typedef: {
            llvm::DIDerivedType *didt = llvm::cast<llvm::DIDerivedType>(type);
            return is_basic_type(didt->getBaseType());
        }
        default:
            return false;
        }
    }

    static std::string basic_type_name(llvm::DIType *type)
    {
        if (type->getTag() == llvm::dwarf::DW_TAG_base_type) {
            llvm::DIBasicType *dit = llvm::cast<llvm::DIBasicType>(type);
            return dit->getName().str();
        } else if (type->getTag() == llvm::dwarf::DW_TAG_pointer_type) {
            return "pointer";
        } else if (type->getTag() == llvm::dwarf::DW_TAG_typedef ||
                   type->getTag() == llvm::dwarf::DW_TAG_const_type) {
            llvm::DIDerivedType *didt = llvm::cast<llvm::DIDerivedType>(type);
            return basic_type_name(didt->getBaseType());
        } else {
            return "";
        }
    }

    static llvm::DICompositeType *struct_of_typedef(llvm::DIType *type)
    {
        if (type->getTag() == llvm::dwarf::DW_TAG_typedef) {
            llvm::DIDerivedType *didt = llvm::cast<llvm::DIDerivedType>(type);
            return struct_of_typedef(didt->getBaseType());
        } else if (type->getTag() == llvm::dwarf::DW_TAG_structure_type) {
            return llvm::cast<llvm::DICompositeType>(type);
        } else {
            return NULL;
        }
    }

    static bool array_is_basic_type(llvm::DIType *type)
    {
        if (type->getTag() == llvm::dwarf::DW_TAG_array_type) {
            llvm::DICompositeType *dict = llvm::cast<llvm::DICompositeType>(type);
            llvm::DIType *dit = dict->getBaseType();
            return is_basic_type(dit);
        } else {
            return false;
        }
    }

    static int base_size_of_type(llvm::DIType *type)
    {
        if (type->getTag() == llvm::dwarf::DW_TAG_typedef ||
            type->getTag() == llvm::dwarf::DW_TAG_const_type) {
            llvm::DIDerivedType *didt = llvm::cast<llvm::DIDerivedType>(type);
            return base_size_of_type(didt->getBaseType());
        } else {
            return type->getSizeInBits() / 8;
        }
    }

    static int array_elem_size(llvm::DIType *type)
    {
        llvm::DICompositeType *dict = llvm::cast<llvm::DICompositeType>(type);
        llvm::DIType *dit = dict->getBaseType();

        return base_size_of_type(dit);
    }

    static llvm::DIType *unwrap_volatile_type(llvm::DIType *type)
    {
        if (type->getTag() == llvm::dwarf::DW_TAG_volatile_type) {
            llvm::DIDerivedType *didt = llvm::cast<llvm::DIDerivedType>(type);
            return unwrap_volatile_type(didt->getBaseType());
        } else {
            return type;
        }
    }
    
    int calc_struct_ofs(llvm::DICompositeType *dict, int ofs, int indent);
    static void print_array(llvm::DIType *dit, int ofs, int indent)
    {
        int elem_size = array_elem_size(dit);
        int total_size = dit->getSizeInBits() / 8;
        int nr_elem;

        if (elem_size == 0)
            nr_elem = 0;
        else
            nr_elem = total_size / elem_size;

        if (array_is_basic_type(dit)) {
            std::cerr << get_indent(indent + 1) << "Element offset: " << ofs;
            std::cerr << " + n * " << elem_size << ", 0 <= n < " << nr_elem << std::endl;
        } else {
            llvm::DIType *base_dit = (llvm::cast<llvm::DICompositeType>(dit))->getBaseType();

            std::cerr << get_indent(indent + 1) << "Array of composite type, element size ";
            std::cerr << elem_size << ", total size ";
            std::cerr << total_size << ", 0 <= n < " << nr_elem << std::endl;
            if (base_dit->getTag() == llvm::dwarf::DW_TAG_structure_type) {
                calc_struct_ofs(llvm::cast<llvm::DICompositeType>(base_dit), ofs, indent + 1);
            } else if(base_dit->getTag() == llvm::dwarf::DW_TAG_array_type) {
                print_array(base_dit, ofs, indent + 1);
            } else {
                std::cerr << get_indent(indent + 1) << "Unknown array type: " << base_dit->getTag() << std::endl;
            }
        }
    }

    int calc_struct_ofs(llvm::DICompositeType *dict, int ofs, int indent)
    {
        DINodeArray elements = dict->getElements();

        std::cerr << get_indent(indent) << "struct " << dict->getName().str() << " {" << std::endl;
        indent++;
        for (const auto &element : elements) {
            llvm::DIDerivedType *didt = llvm::cast<llvm::DIDerivedType>(element);
            llvm::DIType *dit = unwrap_volatile_type(didt->getBaseType());
            std::string basic_type_str = basic_type_name(dit);

            if (basic_type_str != "")
                basic_type_str = basic_type_str + " ";
            std::cerr << get_indent(indent) << basic_type_str << didt->getName().str() << ": " << ofs << std::endl;

            if (is_basic_type(dit)) {
                ofs += didt->getSizeInBits() / 8;
                continue;
            }

            if (dit->getTag() == llvm::dwarf::DW_TAG_array_type) {
                print_array(dit, ofs, indent);
            } else if(dit->getTag() == llvm::dwarf::DW_TAG_structure_type) {
                calc_struct_ofs(llvm::cast<llvm::DICompositeType>(dit), ofs, indent + 1);
            } else if (dit->getTag() == llvm::dwarf::DW_TAG_typedef) {
                llvm::DICompositeType *dict = struct_of_typedef(dit);
                
                if (dict)
                    calc_struct_ofs(dict, ofs, indent + 1);
            } else {
                std::cerr << get_indent(indent + 1) << "Unknown: " << dit->getTag() << std::endl;
            }

            ofs += didt->getSizeInBits() / 8;            
        }

        std::cerr << get_indent(indent - 1) << "}" << std::endl;
        return ofs;
    }

    using TypeMap = llvm::DenseMap<const llvm::DIType *, unsigned>;

    json::Value gen_element(llvm::DICompositeType *dict, TypeMap &MDTracker)
    {
        DINodeArray elements = dict->getElements();
        json::Value str = json::Array();

        for (const auto &element : elements) {
            llvm::DIDerivedType *didt = llvm::cast<llvm::DIDerivedType>(element);
            TypeMap::iterator it = MDTracker.find(didt);

            str.getAsArray()->push_back(std::to_string(it->second));
        }

        return str;
    }

    void calc_field_ofs(llvm::Module *module)
    {    
        llvm::DebugInfoFinder dif;
        TypeMap MDTracker;
        dif.processModule(*module);
        int i = 0;
        json::Value str = json::Array();


        for (const auto &type : dif.types()) {
            MDTracker[type] = i++;
        }

        for (const auto &type : dif.types()) {
                llvm::DICompositeType *dict = NULL;
                json::Object obj;

                if (type->getTag() == llvm::dwarf::DW_TAG_structure_type) {
                    dict = llvm::cast<llvm::DICompositeType>(type);

                    if (dict->getName().str() != "") {
                        TypeMap::iterator it = MDTracker.find(type);
                        int id = (it == MDTracker.end()? -1 : (int)it->second);

                        obj["mdid"] = std::to_string(id);
                        obj["name"] = dict->getName().str();
                        obj["element"] = gen_element(dict, MDTracker);

                    }
                    // if (dict->getName().str() != "") {
                    //     TypeMap::iterator it = MDTracker.find(type);

                    //     std::cerr << (it == MDTracker.end()? -1 : (int)it->second) << ": " << dict->getName().str() << std::endl;
                    // }
                    //if (dict->getName().str() == "el2_data") {
                        //TypeMap::iterator it = MDTracker.find(type);
                        //std::cerr << (it == MDTracker.end()? -1 : (int)it->second) << std::endl;
                        //type->printTree(llvm::errs(), module);
                       //calc_struct_ofs(dict, 0, 0);
                    //}
                }
        }
    }

    static bool is_composite_type(llvm::DIType *type)
    {
        return type->getTag() == llvm::dwarf::DW_TAG_structure_type ||
               type->getTag() == llvm::dwarf::DW_TAG_union_type;
    }

    static bool is_derived_type(llvm::DIType *type)
    {
        return type->getTag() == llvm::dwarf::DW_TAG_typedef ||
               type->getTag() == llvm::dwarf::DW_TAG_pointer_type ||
               type->getTag() == llvm::dwarf::DW_TAG_reference_type ||
               type->getTag() == llvm::dwarf::DW_TAG_restrict_type ||
               type->getTag() == llvm::dwarf::DW_TAG_rvalue_reference_type ||
               type->getTag() == llvm::dwarf::DW_TAG_const_type ||
               type->getTag() == llvm::dwarf::DW_TAG_volatile_type ||
               type->getTag() == llvm::dwarf::DW_TAG_member ||
               type->getTag() == llvm::dwarf::DW_TAG_inheritance;
    }

    static std::string dw_tag_to_string(llvm::dwarf::Tag tag)
    {
        switch (tag) {
        case llvm::dwarf::DW_TAG_array_type:
            return "array";
        case llvm::dwarf::DW_TAG_class_type:
            return "class";
        case llvm::dwarf::DW_TAG_enumeration_type:
            return "enum";
        case llvm::dwarf::DW_TAG_structure_type:
            return "struct";
        case llvm::dwarf::DW_TAG_subroutine_type:
            return "function";
        case llvm::dwarf::DW_TAG_typedef:
            return "typedef";
        case llvm::dwarf::DW_TAG_union_type:
            return "union";
        case llvm::dwarf::DW_TAG_base_type:
            return "base";
        case llvm::dwarf::DW_TAG_pointer_type:
            return "pointer";
        case llvm::dwarf::DW_TAG_reference_type:
            return "reference";
        case llvm::dwarf::DW_TAG_rvalue_reference_type:
            return "rvalue_reference";
        case llvm::dwarf::DW_TAG_const_type:
            return "const";
        case llvm::dwarf::DW_TAG_volatile_type:
            return "volatile";
        case llvm::dwarf::DW_TAG_restrict_type:
            return "restrict";
        case llvm::dwarf::DW_TAG_member:
            return "member";
        case llvm::dwarf::DW_TAG_inheritance:
            return "inheritance";
        default:
            return "unknown";
        }
    }

    json::Value gen_mdtype(llvm::Module *module)
    {
        llvm::DebugInfoFinder dif;
        TypeMap MDTracker;
        dif.processModule(*module);
        int i = 0;
        json::Value str = json::Array();

        for (const auto &type : dif.types()) {
            MDTracker[type] = i++;
        }

        for (const auto &type : dif.types()) {
            llvm::DICompositeType *dict = NULL;
            json::Object obj;
            TypeMap::iterator it = MDTracker.find(type);
            int id = (it == MDTracker.end()? -1 : (int)it->second);

            obj["name"] = type->getName().str();
            obj["mdid"] = std::to_string(id);

            if (type->getTag() == llvm::dwarf::DW_TAG_base_type) {
                obj["type"] = "i" + std::to_string(llvm::cast<llvm::DIBasicType>(type)->getSizeInBits());
            } else if (is_composite_type(type)) {
                obj["elements"] = gen_element(llvm::cast<llvm::DICompositeType>(type), MDTracker);
                obj["size"] = std::to_string(llvm::cast<llvm::DICompositeType>(type)->getSizeInBits());
            } else if (is_derived_type(type)) {
                llvm::DIType *base = llvm::cast<llvm::DIDerivedType>(type)->getBaseType();
                TypeMap::iterator it = MDTracker.find(base);
                int id = (it == MDTracker.end()? -1 : (int)it->second);

                obj["base"] = std::to_string(id);
                if (type->getTag() == llvm::dwarf::DW_TAG_member) {
                    llvm::DIDerivedType *didt = llvm::cast<llvm::DIDerivedType>(type);
                    llvm::DIType *dit = unwrap_volatile_type(didt->getBaseType());

                    obj["offset"] = std::to_string(llvm::cast<llvm::DIDerivedType>(type)->getOffsetInBits());
                    obj["size"] = std::to_string(llvm::cast<llvm::DIDerivedType>(type)->getSizeInBits());

                    if (is_basic_type(dit)) {
                        obj["type"] = "i" + std::to_string(didt->getSizeInBits());
                    }
                }
            } else if (type->getTag() == llvm::dwarf::DW_TAG_array_type) {
                llvm::DIType *base = llvm::cast<llvm::DICompositeType>(type)->getBaseType();
                TypeMap::iterator it = MDTracker.find(base);
                int id = (it == MDTracker.end()? -1 : (int)it->second);

                obj["base"] = std::to_string(id);
            } else if (type->getTag() == llvm::dwarf::DW_TAG_enumeration_type) {
                llvm::DIType *base = llvm::cast<llvm::DICompositeType>(type)->getBaseType();
                TypeMap::iterator it = MDTracker.find(base);
                int id = (it == MDTracker.end()? -1 : (int)it->second);

                obj["base"] = std::to_string(id);
            }

            obj["mdid"] = std::to_string(id);
            obj["tag"] = dw_tag_to_string(type->getTag());

            str.getAsArray()->push_back(obj2value(obj));
        }

        return str;
    }

    json::Value gen_module(llvm::Module *module)
    {
        json::Object obj;
        json::Object structs;
        json::Object vars;
        json::Object functions;
        json::Object metas;

        obj["mdtype"] = gen_mdtype(module);
        for (auto &type : module->getIdentifiedStructTypes())
        {
            auto name = type->getName().str();
            structs[name] = gen_struct(*type);
        }
        obj["struct_types"] = obj2value(structs);

        for (auto &var : module->getGlobalList())
        {
            auto name = var.getName().str();
            vars[name] = gen_global_var(var);
        }
        obj["global_variables"] = obj2value(vars);

        for (auto &func : module->getFunctionList())
        {
            auto name = func.getName().str();
            functions[name] = gen_function(func);
        }
        obj["functions"] = obj2value(functions);

        return obj2value(obj);
    }
}
