#include "ir2json.h"

namespace ir2json
{
    json::Value gen_global_var(const llvm::GlobalVariable &var)
    {
        json::Object obj;
        obj["type"] = gen_type(var.getValueType());
        obj["linkage"] = gen_linkage(var.getLinkage());
        obj["constant"] = var.isConstant();

        if (var.hasInitializer())
        {
            obj["value"] = gen_value(var.getInitializer());
        }
        obj["align"] = std::to_string(var.getAlignment());

        return obj2value(obj);
    }

    std::string gen_linkage(const llvm::GlobalValue::LinkageTypes &linkage)
    {
        switch (linkage)
        {
        case llvm::GlobalValue::ExternalLinkage:
            return "ExternalLinkage";
        case llvm::GlobalValue::AvailableExternallyLinkage: ///< Available for inspection, not emission.
            return "AvailableExternallyLinkage";
        case llvm::GlobalValue::LinkOnceAnyLinkage: ///< Keep one copy of function when linking inline
            return "LinkOnceAnyLinkage";
        case llvm::GlobalValue::LinkOnceODRLinkage: ///< Same, but only replaced by something equivalent.
            return "LinkOnceODRLinkage";
        case llvm::GlobalValue::WeakAnyLinkage: ///< Keep one copy of named function when linking weak
            return "WeakAnyLinkage";
        case llvm::GlobalValue::WeakODRLinkage: ///< Same, but only replaced by something equivalent.
            return "WeakODRLinkage";
        case llvm::GlobalValue::AppendingLinkage: ///< Special purpose, only applies to global arrays
            return "AppendingLinkage";
        case llvm::GlobalValue::InternalLinkage: ///< Rename collisions when linking static functions.
            return "InternalLinkage";
        case llvm::GlobalValue::PrivateLinkage: ///< Like Internal, but omit from symbol table.
            return "PrivateLinkage";
        case llvm::GlobalValue::ExternalWeakLinkage: ///< ExternalWeak linkage description.
            return "ExternalWeakLinkage";
        case llvm::GlobalValue::CommonLinkage: ///< Tentative definitions.
            return "CommonLinkage";
        }
    }
}