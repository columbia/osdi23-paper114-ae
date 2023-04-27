# Generated from Spec.g4 by ANTLR 4.12.0
from antlr4 import *
if __name__ is not None and "." in __name__:
    from .SpecParser import SpecParser
else:
    from SpecParser import SpecParser

# This class defines a complete generic visitor for a parse tree produced by SpecParser.

class SpecVisitor(ParseTreeVisitor):

    # Visit a parse tree produced by SpecParser#program.
    def visitProgram(self, ctx:SpecParser.ProgramContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#statement.
    def visitStatement(self, ctx:SpecParser.StatementContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#typedef.
    def visitTypedef(self, ctx:SpecParser.TypedefContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#def.
    def visitDef(self, ctx:SpecParser.DefContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#decl.
    def visitDecl(self, ctx:SpecParser.DeclContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#fixpoint.
    def visitFixpoint(self, ctx:SpecParser.FixpointContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#path.
    def visitPath(self, ctx:SpecParser.PathContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#include.
    def visitInclude(self, ctx:SpecParser.IncludeContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#command.
    def visitCommand(self, ctx:SpecParser.CommandContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#section_begin.
    def visitSection_begin(self, ctx:SpecParser.Section_beginContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#section_end.
    def visitSection_end(self, ctx:SpecParser.Section_endContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#type.
    def visitType(self, ctx:SpecParser.TypeContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#expr.
    def visitExpr(self, ctx:SpecParser.ExprContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#expr_op.
    def visitExpr_op(self, ctx:SpecParser.Expr_opContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#term.
    def visitTerm(self, ctx:SpecParser.TermContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#tuple.
    def visitTuple(self, ctx:SpecParser.TupleContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#func_call.
    def visitFunc_call(self, ctx:SpecParser.Func_callContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#forall_expr.
    def visitForall_expr(self, ctx:SpecParser.Forall_exprContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#exists_expr.
    def visitExists_expr(self, ctx:SpecParser.Exists_exprContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#var_anno.
    def visitVar_anno(self, ctx:SpecParser.Var_annoContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#let_stmt.
    def visitLet_stmt(self, ctx:SpecParser.Let_stmtContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#when_stmt.
    def visitWhen_stmt(self, ctx:SpecParser.When_stmtContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#match_stmt.
    def visitMatch_stmt(self, ctx:SpecParser.Match_stmtContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#match_branch.
    def visitMatch_branch(self, ctx:SpecParser.Match_branchContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#assert_stmt.
    def visitAssert_stmt(self, ctx:SpecParser.Assert_stmtContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#anno_stmt.
    def visitAnno_stmt(self, ctx:SpecParser.Anno_stmtContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#if_stmt.
    def visitIf_stmt(self, ctx:SpecParser.If_stmtContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#inductive_decl.
    def visitInductive_decl(self, ctx:SpecParser.Inductive_declContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#induct_arm.
    def visitInduct_arm(self, ctx:SpecParser.Induct_armContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#record_decl.
    def visitRecord_decl(self, ctx:SpecParser.Record_declContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#record_fields.
    def visitRecord_fields(self, ctx:SpecParser.Record_fieldsContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#value.
    def visitValue(self, ctx:SpecParser.ValueContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#mk.
    def visitMk(self, ctx:SpecParser.MkContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#name.
    def visitName(self, ctx:SpecParser.NameContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#number.
    def visitNumber(self, ctx:SpecParser.NumberContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#string.
    def visitString(self, ctx:SpecParser.StringContext):
        return self.visitChildren(ctx)


    # Visit a parse tree produced by SpecParser#bool.
    def visitBool(self, ctx:SpecParser.BoolContext):
        return self.visitChildren(ctx)



del SpecParser