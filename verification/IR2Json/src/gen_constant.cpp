#include "ir2json.h"

namespace ir2json
{
    json::Value gen_constant(const llvm::Constant *c)
    {
        if (auto ci = llvm::dyn_cast<llvm::ConstantInt>(c))
        {
            std::string res;
            llvm::raw_string_ostream stream{res};
            ci->getValue().print(stream, false);
            return stream.str();
        }
        else if (auto cf = llvm::dyn_cast<llvm::ConstantFP>(c))
        {
            return std::to_string(cf->getValue().convertToDouble());
        }
        else if (auto ce = llvm::dyn_cast<llvm::ConstantExpr>(c))
        {
            json::Object obj;
            obj["type"] = "expression";
            obj["op"] = std::string(ce->getOpcodeName());
            if (ce->isCompare()) {
                short pred = ce->getPredicate();
                std::string pred_str = llvm::CmpInst::getPredicateName((llvm::CmpInst::Predicate)pred).str();
                obj["predicate"] = pred_str;
            }
            obj["operands"] = json::Array();
            for (int i = 0; i < ce->getNumOperands(); ++i)
            {
                obj["operands"].getAsArray()->push_back(gen_value(ce->getOperand(i)));
            }
            return obj2value(obj);
        }
        else if (auto undef = llvm::dyn_cast<llvm::UndefValue>(c))
        {
            return "UndefValue";
        }
        else if (auto null = llvm::dyn_cast<llvm::ConstantPointerNull>(c))
        {
            return "ConstantPointerNull";
        }
        else if (auto gv = llvm::dyn_cast<llvm::GlobalValue>(c))
        {
            json::Object obj;
            obj["type"] = "global";
            obj["value"] = printValue(gv);
            return obj2value(obj);
        }
        else if (auto cd = llvm::dyn_cast<llvm::ConstantDataArray>(c))
        {
            json::Object obj;
            obj["type"] = "data_array";
            obj["values"] = json::Array();

            for (int i = 0; i < cd->getNumElements(); ++i)
            {
                obj["values"].getAsArray()->push_back(gen_value(cd->getElementAsConstant(i)));
            }
            return obj2value(obj);
        }
        else if (auto ca = llvm::dyn_cast<llvm::ConstantArray>(c))
        {
            json::Object obj;
            obj["type"] = "array";
            obj["values"] = json::Array();

            for (int i = 0; i < ca->getNumOperands(); ++i)
            {
                obj["values"].getAsArray()->push_back(gen_value(ca->getOperand(i)));
            }
            return obj2value(obj);
        }
        else if (auto cd = llvm::dyn_cast<llvm::ConstantDataVector>(c))
        {
            json::Object obj;
            obj["type"] = "data_vector";
            obj["values"] = json::Array();

            for (int i = 0; i < cd->getNumElements(); ++i)
            {
                obj["values"].getAsArray()->push_back(gen_value(cd->getElementAsConstant(i)));
            }
            return obj2value(obj);
        }
        else if (auto ca = llvm::dyn_cast<llvm::ConstantVector>(c))
        {
            json::Object obj;
            obj["type"] = "vector";
            obj["values"] = json::Array();

            for (int i = 0; i < ca->getNumOperands(); ++i)
            {
                obj["values"].getAsArray()->push_back(gen_value(ca->getOperand(i)));
            }
            return obj2value(obj);
        }
        else if (auto cz = llvm::dyn_cast<llvm::ConstantAggregateZero>(c))
        {
            return "ConstantAggregateZero";
        }
        else if (auto cs = llvm::dyn_cast<llvm::ConstantStruct>(c))
        {
            json::Object obj;
            obj["type"] = "struct";
            obj["value"] = json::Array();

            for (int i = 0; i < cs->getNumOperands(); ++i)
            {
                obj["value"].getAsArray()->push_back(gen_value(cs->getOperand(i)));
            }
            return obj2value(obj);
        }
        else if (auto cz = llvm::dyn_cast<llvm::BlockAddress>(c))
        {
            json::Object obj;
            obj["type"] = "block_address";
            obj["function"] = printValue(cz->getFunction());
            obj["block"] = printValue(cz->getBasicBlock());
            return obj2value(obj);
        }
        else
        {
            return "UNSUPPORTED " + print(c);
        }
    }
}
