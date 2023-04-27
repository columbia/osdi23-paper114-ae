#include "ir2json.h"

namespace ir2json
{
    json::Value gen_value(const llvm::Value *val)
    {
        json::Object value;
        value["type"] = gen_type(val->getType());
        if (auto con = llvm::dyn_cast<llvm::Constant>(val))
        {
            value["source"] = "constant";
            value["value"] = gen_constant(con);
        }
        else if (auto con = llvm::dyn_cast<llvm::Argument>(val))
        {
            value["source"] = "argument";
            value["value"] = printValueAsOperand(val);
        }
        else if (auto con = llvm::dyn_cast<llvm::BasicBlock>(val))
        {
            value["source"] = "basic_block";
            value["value"] =  printValueAsOperand(val);
        }
        else if (auto con = llvm::dyn_cast<llvm::InlineAsm>(val))
        {
            value["source"] = "inline_asm";
            json::Object obj;
            obj["type"] = gen_type(con->getFunctionType());
            std::string asm_str = con->getAsmString();
            obj["asm"] = wrap_string(asm_str);
            obj["constraints"] = con->getConstraintString();
            obj["side_effect"] = con->hasSideEffects();
            value["value"] = obj2value(obj);
        }
        else if (auto con = llvm::dyn_cast<llvm::MetadataAsValue>(val))
        {
            value["source"] = "metadata";
            value["value"] = wrap_string(print(con));
        }
        else if (auto inst = llvm::dyn_cast<llvm::Instruction>(val))
        {
            value["source"] = "instruction";
            value["value"] = printValueAsOperand(val);
        }
        else if (auto con = llvm::dyn_cast<llvm::Operator>(val))
        {
            value["source"] = "operator";
            value["value"] = printValueAsOperand(val);
        }
        if (val->getType()->isVoidTy()) 
        {
            value["value"] = "";
        }
        return obj2value(value);
    }
}
