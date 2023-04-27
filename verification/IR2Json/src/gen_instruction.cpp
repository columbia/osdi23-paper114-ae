#include "ir2json.h"

namespace ir2json
{
    json::Value gen_AllocaInst(llvm::AllocaInst &I)
    {
        json::Object inst;
        inst["type"] = "AllocaInst";
        inst["align"] = I.getAlignment();
        inst["assign"] = gen_value(&I);
        return inst;
    }

    json::Value gen_AtomicCmpXchgInst(llvm::AtomicCmpXchgInst &I) 
    {
        json::Object inst;
        inst["type"] = "CmpXchgInst";
        inst["assign"] = gen_value(&I);
        inst["ptr"] = gen_value(I.getPointerOperand());
        inst["cmp"] = gen_value(I.getCompareOperand());
        inst["new"] = gen_value(I.getNewValOperand());
        inst["align"] = I.getAlign().value();
        inst["succ_ordering"] = printAtomicOrdering(I.getSuccessOrdering());
        inst["failure_ordering"] = printAtomicOrdering(I.getFailureOrdering());
        return inst;
    }

    json::Value gen_AtomicRMWInst(llvm::AtomicRMWInst &I) 
    {
        json::Object inst;
        inst["type"] = "AtomicRMWInst";
        inst["assign"] = gen_value(&I);
        inst["op"] = I.getOperationName(I.getOperation()).str();
        inst["ptr"] = gen_value(I.getPointerOperand());
        inst["val"] = gen_value(I.getValOperand());
        inst["align"] = I.getAlign().value();
        inst["ordering"] = printAtomicOrdering(I.getOrdering());
        return inst;
    }

    json::Value gen_BinaryOperator(const llvm::BinaryOperator &I) 
    { 
        json::Object inst;
        inst["type"] = "BinaryOperator";
        inst["operator"] = std::string(I.getOpcodeName());
        inst["operands"] = json::Array();
        for (int i = 0; i < I.getNumOperands(); ++i)
        {
             inst["operands"].getAsArray()->push_back(gen_value(I.getOperand(i)));
        }
        inst["assign"] = gen_value(&I);
        return inst;
    }

    json::Value gen_BitCastInst(llvm::BitCastInst &I)
    {
        json::Object inst;
        inst["type"] = "BitCastInst";
        inst["src"] = gen_value(I.getOperand(0));
        inst["assign"] = gen_value(&I);
        return inst;
    }

    json::Value gen_BranchInst(llvm::BranchInst &I)
    {
        json::Object inst;
        inst["type"] = "BranchInst";
        if (I.isConditional()) {
            inst["conditional"] = true;
            inst["condition"] = gen_value(I.getCondition());
            inst["true_br"] = gen_value(I.getSuccessor(0));
            inst["false_br"] = gen_value(I.getSuccessor(1));
        }
        else {
            inst["conditional"] = false;
            inst["true_br"] = gen_value(I.getSuccessor(0));
        }
        return inst;
    }

    json::Value gen_CallInst(llvm::CallInst &I) 
    { 
        json::Object inst;
        inst["type"] = "CallInst";
        inst["arguments"] = json::Array();
        for (int i = 0; i < I.getNumOperands(); ++i)
        {
             inst["arguments"].getAsArray()->push_back(gen_value(I.getOperand(i)));
        }
        inst["assign"] = gen_value(&I);
        return inst;
    }

    json::Value gen_ExtractElementInst(llvm::ExtractElementInst &I)
    {
        json::Object inst;
        inst["type"] = "ExtractElementInst";
        inst["assign"] = gen_value(&I);
        inst["src"] = gen_value(I.getVectorOperand());
        inst["index"] = gen_value(I.getIndexOperand());
        return inst;
    }

    json::Value gen_ExtractValueInst(llvm::ExtractValueInst &I)
    {
        json::Object inst;
        inst["type"] = "ExtractValueInst";
        inst["assign"] = gen_value(&I);
        inst["src"] = gen_value(I.getAggregateOperand());
        inst["indices"] = json::Array();

        for (auto i : I.getIndices()) {
            inst["indices"].getAsArray()->push_back(i);
        }

        return inst;
    }

    json::Value gen_FCmpInst(llvm::FCmpInst &I)
    { 
        json::Object inst;
        inst["type"] = "FCmpInst";
        inst["predicate"] = I.getPredicateName(I.getPredicate()).str();
        inst["operands"] = json::Array();
        for (int i = 0; i < I.getNumOperands(); ++i)
        {
             inst["operands"].getAsArray()->push_back(gen_value(I.getOperand(i)));
        }
        inst["assign"] = gen_value(&I);
        return inst;

        return json::Object(); 
    }

    json::Value gen_FPExtInst(llvm::FPExtInst &I)
    { 
        json::Object inst;
        inst["type"] = "FPExtInst";
        inst["src"] = gen_value(I.getOperand(0));
        inst["assign"] = gen_value(&I);
        return inst;
    }

    json::Value gen_FPToSIInst(llvm::FPToSIInst &I)
    { 
        json::Object inst;
        inst["type"] = "FPToSIInst";
        inst["src"] = gen_value(I.getOperand(0));
        inst["assign"] = gen_value(&I);
        return inst;
    }

    json::Value gen_FPToUIInst(llvm::FPToUIInst &I)
    { 
        json::Object inst;
        inst["type"] = "FPToUIInst";
        inst["src"] = gen_value(I.getOperand(0));
        inst["assign"] = gen_value(&I);
        return inst;
    }

    json::Value gen_FPTruncInst(llvm::FPTruncInst &I)
    {
        json::Object inst;
        inst["type"] = "FPTruncInst";
        inst["src"] = gen_value(I.getOperand(0));
        inst["assign"] = gen_value(&I);
        return inst;
    }

    json::Value gen_FenceInst(llvm::FenceInst &I) 
    {
        json::Object inst;
        inst["type"] = "FenceInst";
        inst["ordering"] = printAtomicOrdering(I.getOrdering());
        return inst;
    }

    json::Value gen_FreezeInst(llvm::FreezeInst &I)
    {
        json::Object inst;
        inst["type"] = "FreezeInst";
        inst["src"] = gen_value(I.getOperand(0));
        inst["assign"] = gen_value(&I);
        return inst;
    }

    json::Value gen_GetElementPtrInst(llvm::GetElementPtrInst &I) 
    { 
        json::Object inst;
        inst["type"] = "GetElementPtrInst";
        inst["assign"] = gen_value(&I);
        inst["inbounds"] = I.isInBounds();
        inst["src"] = gen_value(I.getPointerOperand());
        inst["indices"] = json::Array();

        for (auto i = I.idx_begin(); i != I.idx_end(); ++i) {
            inst["indices"].getAsArray()->push_back(gen_value(i->get()));
        }

        return inst;
    }

    json::Value gen_ICmpInst(llvm::ICmpInst &I) 
    { 
        json::Object inst;
        inst["type"] = "ICmpInst";
        inst["predicate"] = I.getPredicateName(I.getPredicate()).str();
        inst["operands"] = json::Array();
        for (int i = 0; i < I.getNumOperands(); ++i)
        {
             inst["operands"].getAsArray()->push_back(gen_value(I.getOperand(i)));
        }
        inst["assign"] = gen_value(&I);
        return inst;

        return json::Object(); 
    }

    json::Value gen_InsertElementInst(llvm::InsertElementInst &I)
    {
        json::Object inst;
        inst["type"] = "InsertElementInst";
        inst["assign"] = gen_value(&I);
        inst["target"] = gen_value(I.getOperand(0));
        inst["value"] = gen_value(I.getOperand(1));
        inst["index"] = gen_value(I.getOperand(2));
        return inst;
    }

    json::Value gen_InsertValueInst(llvm::InsertValueInst &I)
    {
        json::Object inst;
        inst["type"] = "InsertValueInst";
        inst["assign"] = gen_value(&I);
        inst["target"] = gen_value(I.getAggregateOperand());
        inst["value"] = gen_value(I.getInsertedValueOperand());
        inst["indices"] = json::Array();

        for (auto i : I.getIndices()) {
            inst["indices"].getAsArray()->push_back(i);
        }

        return inst;
    }

    json::Value gen_IntToPtrInst(llvm::IntToPtrInst &I)
    { 
        json::Object inst;
        inst["type"] = "IntToPtrInst";
        inst["src"] = gen_value(I.getOperand(0));
        inst["assign"] = gen_value(&I);
        return inst;
    }

    json::Value gen_LoadInst(llvm::LoadInst &I) 
    { 
        json::Object inst;
        inst["type"] = "LoadInst";
        inst["assign"] = gen_value(&I);
        inst["src"] = gen_value(I.getPointerOperand());
        inst["align"] = I.getAlignment();
        return inst;
    }

    json::Value gen_PHINode(llvm::PHINode &I) 
    {
        json::Object inst;
        inst["type"] = "PHINode";
        inst["incoming_list"] = json::Array();
        for (int i = 0; i < I.getNumIncomingValues(); ++i)
        {
            json::Object phi;
            phi["value"] = gen_value(I.getIncomingValue(i));
            phi["block"] = gen_value(I.getIncomingBlock(i));
            inst["incoming_list"].getAsArray()->push_back(obj2value(phi));
        }
        inst["assign"] = gen_value(&I);
        return inst;
    }

    json::Value gen_PtrToIntInst(llvm::PtrToIntInst &I)
    { 
        json::Object inst;
        inst["type"] = "PtrToIntInst";
        inst["src"] = gen_value(I.getOperand(0));
        inst["assign"] = gen_value(&I);
        return inst;
    }

    json::Value gen_ReturnInst(llvm::ReturnInst &I) 
    {
        json::Object inst;
        inst["type"] = "ReturnInst";
        if (I.getNumOperands() == 0)
        {
            inst["return_type"] = gen_type(I.getType());
        }
        else
        {
            assert(I.getNumOperands() == 1);
            inst["return_type"] = gen_type(I.getReturnValue()->getType());
            inst["return_value"] = gen_value(I.getReturnValue());
        }
        return inst;
    }

    json::Value gen_SExtInst(llvm::SExtInst &I)
    { 
        json::Object inst;
        inst["type"] = "SExtInst";
        inst["src"] = gen_value(I.getOperand(0));
        inst["assign"] = gen_value(&I);
        return inst;
    }

    json::Value gen_SIToFPInst(llvm::SIToFPInst &I)
    { 
        json::Object inst;
        inst["type"] = "SIToFPInst";
        inst["src"] = gen_value(I.getOperand(0));
        inst["assign"] = gen_value(&I);
        return inst;
    }

    json::Value gen_SelectInst(llvm::SelectInst &I) 
    {
        json::Object inst;
        inst["type"] = "SelectInst";
        inst["condition"] = gen_value(I.getCondition());
        inst["true_value"] = gen_value(I.getTrueValue());
        inst["false_value"] = gen_value(I.getFalseValue());
        inst["assign"] = gen_value(&I);
        return inst;
    }

    json::Value gen_ShuffleVectorInst(llvm::ShuffleVectorInst &I) 
    {
        json::Object inst;
        inst["type"] = "ShuffleVectorInst";
        inst["operands"] = json::Array();
        for (int i = 0; i < I.getNumOperands(); ++i)
        {
            inst["operands"].getAsArray()->push_back(gen_value(I.getOperand(i)));
        }
        inst["assign"] = gen_value(&I);
        return inst;
    }

    json::Value gen_StoreInst(llvm::StoreInst &I) 
    { 
        json::Object inst;
        inst["type"] = "StoreInst";
        inst["src"] = gen_value(I.getValueOperand());
        inst["target"] = gen_value(I.getPointerOperand());
        inst["align"] = I.getAlignment();
        return inst;
    }

    json::Value gen_SwitchInst(llvm::SwitchInst &I)
    {
        json::Object inst;
        inst["type"] = "SwitchInst";
        inst["condition"] = gen_value(I.getCondition());
        inst["default_succ"] = gen_value(I.getDefaultDest());
        inst["cases"] = json::Array();
        for (auto c = I.case_begin(); c != I.case_end(); ++c)
        {
            json::Object cas;
            cas["value"] = gen_value(c->getCaseValue());
            cas["succ"] = gen_value(c->getCaseSuccessor());
            inst["cases"].getAsArray()->push_back(obj2value(cas));
        }
        inst["assign"] = gen_value(&I);
        return inst;
    }

    json::Value gen_TruncInst(llvm::TruncInst &I)
    { 
        json::Object inst;
        inst["type"] = "TruncInst";
        inst["src"] = gen_value(I.getOperand(0));
        inst["assign"] = gen_value(&I);
        return inst;
    }

    json::Value gen_UIToFPInst(llvm::UIToFPInst &I)
    {
        json::Object inst;
        inst["type"] = "UIToFPInst";
        inst["src"] = gen_value(I.getOperand(0));
        inst["assign"] = gen_value(&I);
        return inst;
    }

    json::Value gen_UnaryOperator(const llvm::UnaryOperator &I) 
    { 
        json::Object inst;
        inst["type"] = "UnaryOperator";
        inst["operator"] = std::string(I.getOpcodeName());
        inst["operands"] = json::Array();
        for (int i = 0; i < I.getNumOperands(); ++i)
        {
             inst["operands"].getAsArray()->push_back(gen_value(I.getOperand(i)));
        }
        inst["assign"] = gen_value(&I);
        return inst;
    }

    json::Value gen_UnreachableInst(llvm::UnreachableInst &I)
    {
        json::Object inst;
        inst["type"] = "UnreachableInst";
        return inst;
    }

    json::Value gen_ZExtInst(llvm::ZExtInst &I)
    { 
        json::Object inst;
        inst["type"] = "ZExtInst";
        inst["src"] = gen_value(I.getOperand(0));
        inst["assign"] = gen_value(&I);
        return inst;
    }


    json::Value gen_instruction(llvm::Instruction &inst)
    {
        if (llvm::AllocaInst *I = dyn_cast<llvm::AllocaInst>(&inst))
            return gen_AllocaInst(*I);
        if (llvm::AtomicCmpXchgInst *I = dyn_cast<llvm::AtomicCmpXchgInst>(&inst))
            return gen_AtomicCmpXchgInst(*I);
        if (llvm::AtomicRMWInst *I = dyn_cast<llvm::AtomicRMWInst>(&inst))
            return gen_AtomicRMWInst(*I);
        if (llvm::BinaryOperator *I = dyn_cast<llvm::BinaryOperator>(&inst))
            return gen_BinaryOperator(*I);
        if (llvm::BitCastInst *I = dyn_cast<llvm::BitCastInst>(&inst))
            return gen_BitCastInst(*I);
        if (llvm::BranchInst *I = dyn_cast<llvm::BranchInst>(&inst))
            return gen_BranchInst(*I);
        if (llvm::CallInst *I = dyn_cast<llvm::CallInst>(&inst))
            return gen_CallInst(*I);
        if (llvm::ExtractElementInst *I = dyn_cast<llvm::ExtractElementInst>(&inst))
            return gen_ExtractElementInst(*I);
        if (llvm::ExtractValueInst *I = dyn_cast<llvm::ExtractValueInst>(&inst))
            return gen_ExtractValueInst(*I);
        if (llvm::FCmpInst *I = dyn_cast<llvm::FCmpInst>(&inst))
            return gen_FCmpInst(*I);
        if (llvm::FPExtInst *I = dyn_cast<llvm::FPExtInst>(&inst))
            return gen_FPExtInst(*I);
        if (llvm::FPToSIInst *I = dyn_cast<llvm::FPToSIInst>(&inst))
            return gen_FPToSIInst(*I);
        if (llvm::FPToUIInst *I = dyn_cast<llvm::FPToUIInst>(&inst))
            return gen_FPToUIInst(*I);
        if (llvm::FPTruncInst *I = dyn_cast<llvm::FPTruncInst>(&inst))
            return gen_FPTruncInst(*I);
        if (llvm::FenceInst *I = dyn_cast<llvm::FenceInst>(&inst))
            return gen_FenceInst(*I);
        if (llvm::FreezeInst *I = dyn_cast<llvm::FreezeInst>(&inst))
            return gen_FreezeInst(*I);
        if (llvm::GetElementPtrInst *I = dyn_cast<llvm::GetElementPtrInst>(&inst))
            return gen_GetElementPtrInst(*I);
        if (llvm::ICmpInst *I = dyn_cast<llvm::ICmpInst>(&inst))
            return gen_ICmpInst(*I);
        if (llvm::InsertElementInst *I = dyn_cast<llvm::InsertElementInst>(&inst))
            return gen_InsertElementInst(*I);
        if (llvm::InsertValueInst *I = dyn_cast<llvm::InsertValueInst>(&inst))
            return gen_InsertValueInst(*I);
        if (llvm::IntToPtrInst *I = dyn_cast<llvm::IntToPtrInst>(&inst))
            return gen_IntToPtrInst(*I);
        if (llvm::LoadInst *I = dyn_cast<llvm::LoadInst>(&inst))
            return gen_LoadInst(*I);
        if (llvm::PHINode *I = dyn_cast<llvm::PHINode>(&inst))
            return gen_PHINode(*I);
        if (llvm::PtrToIntInst *I = dyn_cast<llvm::PtrToIntInst>(&inst))
            return gen_PtrToIntInst(*I);
        if (llvm::ReturnInst *I = dyn_cast<llvm::ReturnInst>(&inst))
            return gen_ReturnInst(*I);
        if (llvm::SExtInst *I = dyn_cast<llvm::SExtInst>(&inst))
            return gen_SExtInst(*I);
        if (llvm::SIToFPInst *I = dyn_cast<llvm::SIToFPInst>(&inst))
            return gen_SIToFPInst(*I);
        if (llvm::SelectInst *I = dyn_cast<llvm::SelectInst>(&inst))
            return gen_SelectInst(*I);
        if (llvm::ShuffleVectorInst *I = dyn_cast<llvm::ShuffleVectorInst>(&inst))
            return gen_ShuffleVectorInst(*I);
        if (llvm::StoreInst *I = dyn_cast<llvm::StoreInst>(&inst))
            return gen_StoreInst(*I);
        if (llvm::SwitchInst *I = dyn_cast<llvm::SwitchInst>(&inst))
            return gen_SwitchInst(*I);
        if (llvm::TruncInst *I = dyn_cast<llvm::TruncInst>(&inst))
            return gen_TruncInst(*I);
        if (llvm::UIToFPInst *I = dyn_cast<llvm::UIToFPInst>(&inst))
            return gen_UIToFPInst(*I);
        if (llvm::UnaryOperator *I = dyn_cast<llvm::UnaryOperator>(&inst))
            return gen_UnaryOperator(*I);
        if (llvm::UnreachableInst *I = dyn_cast<llvm::UnreachableInst>(&inst))
            return gen_UnreachableInst(*I);
        if (llvm::ZExtInst *I = dyn_cast<llvm::ZExtInst>(&inst))
            return gen_ZExtInst(*I);
        return "UNSUPPORTED " + std::string(inst.getOpcodeName());
    }

    json::Value gen_CallBrInst(llvm::CallBrInst &I);
    json::Value gen_VAArgInst(llvm::VAArgInst &I) { return json::Object(); }
    json::Value gen_LandingPadInst(llvm::LandingPadInst &I) { return json::Object(); }
    json::Value gen_IndirectBrInst(llvm::IndirectBrInst &I) { return json::Object(); }
    json::Value gen_InvokeInst(llvm::InvokeInst &I) { return json::Object(); }
    json::Value gen_ResumeInst(llvm::ResumeInst &I) { return json::Object(); }
    json::Value gen_CatchSwitchInst(llvm::CatchSwitchInst &I) { return json::Object(); }
    json::Value gen_CleanupPadInst(llvm::CleanupPadInst &I) { return json::Object(); }
    json::Value gen_CatchPadInst(llvm::CatchPadInst &I) { return json::Object(); }
    json::Value gen_CatchReturnInst(llvm::CatchReturnInst &I) { return json::Object(); }
    json::Value gen_CleanupReturnInst(llvm::CleanupReturnInst &I) { return json::Object(); }
    json::Value gen_AddrSpaceCastInst(llvm::AddrSpaceCastInst &I) { return json::Object(); }
}
