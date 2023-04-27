#pragma once

#include "imports.h"
#include "utils.h"

namespace ir2json
{
    json::Value gen_module(llvm::Module *module);

    json::Value gen_struct(const llvm::StructType &type);
    json::Value gen_type(llvm::Type *type);

    json::Value gen_global_var(const llvm::GlobalVariable &var);
    std::string gen_linkage(const llvm::GlobalValue::LinkageTypes &linkage);
    json::Value gen_constant(const llvm::Constant *c);

    json::Value gen_basic_block(llvm::BasicBlock &bb);
    json::Value gen_argument(const llvm::Argument *arg);
    json::Value gen_function(llvm::Function &func);
    json::Value gen_value(const llvm::Value *val);

    json::Value gen_instruction(llvm::Instruction &i);
}