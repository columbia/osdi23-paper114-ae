#include "ir2json.h"

namespace ir2json
{
    json::Value gen_struct(const llvm::StructType &type)
    {
        json::Value str = json::Array();

        const auto elements = type.elements();

        for (auto e : type.elements())
        {
            str.getAsArray()->push_back(gen_type(e));
        }

        return str;
    }

    json::Value gen_type(llvm::Type *type)
    {
        llvm::FunctionType *func_t;
        llvm::PointerType *ptr_t;
        llvm::StructType *str_t;
        llvm::ArrayType *arr_t;
        llvm::FixedVectorType *fvec_t;
        llvm::ScalableVectorType *svec_t;

        json::Object obj;

        switch (type->getTypeID())
        {
        case llvm::Type::HalfTyID:      ///< 16-bit floating point type
        case llvm::Type::BFloatTyID:    ///< 16-bit floating point type (7-bit significand)
        case llvm::Type::FloatTyID:     ///< 32-bit floating point type
        case llvm::Type::DoubleTyID:    ///< 64-bit floating point type
        case llvm::Type::X86_FP80TyID:  ///< 80-bit floating point type (X87)
        case llvm::Type::FP128TyID:     ///< 128-bit floating point type (112-bit significand)
        case llvm::Type::PPC_FP128TyID: ///< 128-bit floating point type (two 64-bits, PowerPC)
        case llvm::Type::VoidTyID:      ///< type with no size
        case llvm::Type::LabelTyID:     ///< Labels
        case llvm::Type::MetadataTyID:  ///< Metadata
        case llvm::Type::X86_MMXTyID:   ///< MMX vectors (64 bits, X86 specific)
        case llvm::Type::X86_AMXTyID:   ///< AMX vectors (8192 bits, X86 specific)
        case llvm::Type::TokenTyID:     ///< Tokens
        case llvm::Type::IntegerTyID:   ///< Arbitrary bit width integers
            obj["type"] = print(type);
            break;
        case llvm::Type::FunctionTyID: ///< Functions
            func_t = static_cast<llvm::FunctionType *>(type);
            obj["type"] = "function";
            obj["return"] = gen_type(func_t->getReturnType());
            obj["arguments"] = json::Array();
            for (int i = 0; i < func_t->getFunctionNumParams(); ++i)
            {
                auto arg_t = func_t->getFunctionParamType(i);
                obj["arguments"].getAsArray()->push_back(gen_type(arg_t));
            }
            break;
        case llvm::Type::PointerTyID: ///< Pointers
            ptr_t = static_cast<llvm::PointerType *>(type);
            obj["type"] = "pointer";
            obj["subtype"] = gen_type(ptr_t->getPointerElementType());
            break;
        case llvm::Type::StructTyID: ///< Structures
            str_t = static_cast<llvm::StructType *>(type);
            if (str_t->hasName())
            {
                obj["type"] = "named_struct";
                obj["name"] = str_t->getName().str();
            }
            else
            {
                obj["type"] = "unnamed_struct";
                obj["struct"] = json::Array();
                for (auto e : str_t->elements())
                {
                    obj["struct"].getAsArray()->push_back(gen_type(e));
                }
            }
            break;
        case llvm::Type::ArrayTyID: ///< Arrays
            arr_t = static_cast<llvm::ArrayType *>(type);
            obj["type"] = "array";
            obj["length"] = std::to_string(arr_t->getNumElements());
            obj["subtype"] = gen_type(arr_t->getElementType());
            break;
        case llvm::Type::FixedVectorTyID: ///< Fixed width SIMD vector type
            fvec_t = static_cast<llvm::FixedVectorType *>(type);
            obj["type"] = "fixedvector";
            obj["length"] = std::to_string(fvec_t->getNumElements());
            obj["subtype"] = gen_type(fvec_t->getElementType());
            break;
        case llvm::Type::ScalableVectorTyID: ///< Scalable SIMD vector type
            svec_t = static_cast<llvm::ScalableVectorType *>(type);
            obj["type"] = "scalevector";
            obj["subtype"] = gen_type(svec_t->getElementType());
            break;
        default:
            return "UNSUPPORTED";
        }
        return obj2value(obj);
    }
}
