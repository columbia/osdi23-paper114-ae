#include "ir2json.h"

namespace ir2json
{
    json::Value gen_basic_block(llvm::BasicBlock &bb)
    {
        json::Value obj = json::Array();
        for (auto &instr : bb.getInstList()) {
            obj.getAsArray()->push_back(gen_instruction(instr));
        }
        return obj;
    }

    json::Value gen_argument(const llvm::Argument *arg)
    {
        json::Object obj;

        obj["type"] = gen_type(arg->getType());
        obj["name"] = printValue(arg);

        return obj;
    }

    json::Value gen_function(llvm::Function &func)
    {
        json::Object obj;

        obj["fname"] = func.getName().str();
        obj["rettype"] = gen_type(func.getReturnType());
        obj["args"] = json::Array();
        for (int i = 0; i < func.arg_size(); ++i) {
            obj["args"].getAsArray()->push_back(gen_argument(func.getArg(i)));
        }

        if (func.isDeclaration()) {
            obj["is_declaration"] = true;
        }
        else {
            obj["is_declaration"] = false;
            const std::string entry = printValue(&func.getEntryBlock());
            obj["entry"] = entry;
            auto blocks = json::Object();
            for (auto &bb : func.getBasicBlockList())
            {
                blocks[printValue(&bb)] = gen_basic_block(bb);
            }
            obj["blocks"] = obj2value(blocks);
        }

        return obj2value(obj);
    }
}