from antlr4 import *

from AutoV.Spec.parser.SpecLexer import SpecLexer
from AutoV.Spec.parser.SpecParser import SpecParser
from AutoV.Spec.parser.SpecVisitor import SpecVisitor
from AutoV.Spec.nodes import *
from AutoV.Spec.values import *


class ProgramVisitor(SpecVisitor):

    def __init__(self, proj):
        super().__init__()
        self.proj = proj

    def visitProgram(self, ctx: SpecParser.ProgramContext):
        for s in ctx.statement():
            return self.visit(s)

    def visitStatement(self, ctx: SpecParser.StatementContext):
        if ctx.decl():
            return self.visit(ctx.decl())
        elif ctx.typedef():
            return self.visit(ctx.typedef())
        elif ctx.def_():
            return self.visit(ctx.def_())
        elif ctx.fixpoint():
            return self.visit(ctx.fixpoint())
        elif ctx.inductive_decl():
            return self.visit(ctx.inductive_decl())
        elif ctx.record_decl():
            return self.visit(ctx.record_decl())
        elif ctx.include():
            return self.visit(ctx.include())
        elif ctx.section_begin():
            return self.visit(ctx.section_begin())
        elif ctx.section_end():
            return self.visit(ctx.section_end())
        elif ctx.command():
            return self.visit(ctx.command())

    def visitDef(self, ctx: SpecParser.DefContext):
        name = ctx.name().getText()
        expr = self.visit(ctx.expr())
        var_anno = [self.visit(var) for var in ctx.var_anno()]
        rettype = self.visit(ctx.type_())

        return Definition(name, rettype, var_anno, expr)

    def visitDecl(self, ctx: SpecParser.DeclContext):
        name = self.visit(ctx.name()).text
        type = self.visit(ctx.type_())
        return Declaration(name, type)

    def visitFixpoint(self, ctx: SpecParser.FixpointContext):
        name = self.visit(ctx.name()).text
        expr = self.visit(ctx.expr())
        var_anno = [self.visit(var) for var in ctx.var_anno()]
        rettype = self.visit(ctx.type_())
        return Fixpoint(name, rettype, var_anno, expr)

    def visitInductive_decl(self, ctx: SpecParser.Inductive_declContext):
        name = self.visit(ctx.name()).text
        arms = [self.visit(arm) for arm in ctx.induct_arm()]
        return Inductive(name, arms)

    def visitInduct_arm(self, ctx: SpecParser.Induct_armContext):
        return IndConstr(self.visit(ctx.name()).text, [self.visit(var) for var in ctx.var_anno()])

    def visitRecord_fields(self, ctx:SpecParser.Record_fieldsContext):
        return [Arg(self.visit(name).text, self.visit(type)) for type, name in zip(ctx.type_(), ctx.name())]

    def visitRecord_decl(self, ctx: SpecParser.Record_declContext):
        name = self.visit(ctx.name(0)).text
        fields = self.visit(ctx.record_fields())
        return Struct(name, fields)

    def visitExpr(self, ctx:SpecParser.ExprContext):
        if ctx.if_stmt():
            return self.visit(ctx.if_stmt())
        elif ctx.when_stmt():
            return self.visit(ctx.when_stmt())
        elif ctx.assert_stmt():
            return self.visit(ctx.assert_stmt())
        elif ctx.anno_stmt():
            return self.visit(ctx.anno_stmt())
        elif ctx.match_stmt():
            return self.visit(ctx.match_stmt())
        elif ctx.let_stmt():
            return self.visit(ctx.let_stmt())
        else:
            return self.visit(ctx.expr_op())

    def visitExpr_op(self, ctx:SpecParser.Expr_opContext):
        if ctx.binop:
            return Expr(ctx.binop.text, [self.visit(ctx.expr_op(0)), self.visit(ctx.expr_op(1))])
        elif ctx.record_set:
            return Expr("Record.set",[self.visit(ctx.expr_op(0))] + [self.visit(n) for n in ctx.name()] + [self.visit(ctx.expr_op(1))])
        elif ctx.record_set2:
            return Expr("Record.set",[self.visit(ctx.expr_op(0)), self.visit(ctx.name(0)), self.visit(ctx.expr_op(1))])
        elif ctx.map_get:
            return Expr("ZMap.get", [self.visit(ctx.expr_op(0)),self.visit(ctx.expr_op(1))])
        elif ctx.map_set:
            return Expr("ZMap.set", [self.visit(ctx.expr_op(0)),self.visit(ctx.expr_op(1)),self.visit(ctx.expr_op(2))])
        elif ctx.forall_expr():
            return Forall(self.visit(ctx.forall_expr()), self.visit(ctx.expr_op(0)))
        elif ctx.exists_expr():
            return Exists(self.visit(ctx.exists_expr()), self.visit(ctx.expr_op(0)))
        elif ctx.op:
            exprs = [self.visit(e) for e in ctx.term()]
            op = exprs[0]
            exprs = exprs[1:]
            if isinstance(op, Symbol):
                return Expr(op.text, exprs)
            else:
                return Expr(op, exprs)
        else:
            return self.visit(ctx.term(0))

    def visitTerm(self, ctx:SpecParser.TermContext):
        if ctx.uniop:
            return Expr(ctx.uniop.text, [self.visit(ctx.term())])
        elif ctx.record_get:
            return Expr("Record.get",[self.visit(ctx.term()),self.visit(ctx.name())])
        elif ctx.tuple_():
            return self.visit((ctx.tuple_()))
        elif ctx.value():
            return self.visit(ctx.value())
        else:
            return self.visit(ctx.par)

    def visitLet_stmt(self, ctx: SpecParser.Let_stmtContext):
        if ctx.tuple_():
            return Match(self.visit(ctx.expr(0)), [PatternMatch(self.visit(ctx.tuple_()), self.visit(ctx.expr(1)))])
        elif ctx.name():
            return Match(self.visit(ctx.expr(0)), [PatternMatch(self.visit(ctx.name()), self.visit(ctx.expr(1)))])

    def visitMatch_stmt(self, ctx: SpecParser.Match_stmtContext):
        return Match(self.visit(ctx.expr()), [self.visit(branch) for branch in ctx.match_branch()])

    def visitMatch_branch(self, ctx:SpecParser.Match_branchContext):
        return PatternMatch(self.visit(ctx.expr(0)), self.visit(ctx.expr(1)))

    def visitWhen_stmt(self, ctx: SpecParser.When_stmtContext):
        names = [self.visit(name) for name in ctx.name()]
        value = self.visit(ctx.expr(0))
        body = self.visit(ctx.expr(1))
        if len(names) == 1:
            return Match.when(names[0], value, body)
        else:
            return Match.when(Expr('Tuple', names), value, body)

    def visitAssert_stmt(self, ctx: SpecParser.Assert_stmtContext):
        return Rely(self.visit(ctx.expr(0)), self.visit(ctx.expr(1)))

    def visitAnno_stmt(self, ctx:SpecParser.Anno_stmtContext):
        return Anno(self.visit(ctx.expr(0)), self.visit(ctx.expr(1)))

    def visitFunc_call(self, ctx: SpecParser.Func_callContext):
        return Expr(ctx.name().getText(), [self.visit(e) for e in ctx.expr()])

    def visitForall_expr(self, ctx: SpecParser.Forall_exprContext):
        return [self.visit(var) for var in ctx.var_anno()]

    def visitExists_expr(self, ctx:SpecParser.Exists_exprContext):
        return [self.visit(var) for var in ctx.var_anno()]

    def visitIf_stmt(self, ctx: SpecParser.If_stmtContext):
        return If(self.visit(ctx.expr(0)), self.visit(ctx.expr(1)), self.visit(ctx.expr(2)))

    def visitTuple(self, ctx: SpecParser.TupleContext):
        return Expr("Tuple", [self.visit(expr) for expr in ctx.expr()])

    def visitValue(self, ctx: SpecParser.ValueContext):
        if ctx.string():
            return StringConst(eval(ctx.string().getText()))
        elif ctx.number():
            return IntConst(self.visit(ctx.number()))
        elif ctx.bool_():
            return BoolConst(True if self.visit(ctx.bool_()) == "true" else False)
        elif ctx.name():
            return self.visit(ctx.name())

    def visitNumber(self, ctx:SpecParser.NumberContext):
        return int(ctx.getText())

    def visitBool(self, ctx:SpecParser.BoolContext):
        return ctx.getText()

    def visitName(self, ctx:SpecParser.NameContext):
        return Symbol(ctx.getText())

    def visitVar_anno(self, ctx: SpecParser.Var_annoContext):
        return Arg(self.visit(ctx.name()).text, self.visit(ctx.type_()))

    def visitType(self, ctx : SpecParser.TypeContext):
        if ctx.par:
            return self.visit(ctx.type_(0))
        if ctx.Z_type:
            return Int()
        elif ctx.bool_type:
            return Bool()
        elif ctx.str_type:
            return String()
        elif ctx.type_type:
            return Type()
        elif ctx.prop_type:
            return Prop()
        elif ctx.list_type:
            return List(self.visit(ctx.type_(0)))
        elif ctx.option_type:
            return Option(self.visit(ctx.type_(0)))
        elif ctx.domain:
            domain = self.visit(ctx.type_(0))
            curried_type = self.visit(ctx.type_(1))
            if(isinstance(curried_type, Function)):
                args = list(curried_type.args)
                args.insert(0, domain)
                return Function(curried_type.rettype, args=args)
            else:
                return Function(curried_type,args=[domain])
        elif ctx.tup:
            return Tuple([self.visit(type) for type in ctx.type_()])
        elif ctx.map_type:
            return ZMap(self.visit(ctx.type_(0)))
        elif ctx.name():
            name = ctx.name().getText()
            sym = self.proj.symbols.get(name, {"kind": "", "info": ""})
            if sym["kind"] == "struct":
                return self.proj.structs[name]
            if sym["kind"] == "indtype":
                return self.proj.indtypes[name]
            if sym["kind"] == "typedef":
                return self.proj.typedef[name]
            return SpecType(name)

def parse(proj, text):
    lexer = SpecLexer(InputStream(text))
    stream = CommonTokenStream(lexer)
    parser = SpecParser(stream)
    tree = parser.program()
    return ProgramVisitor(proj).visitProgram(tree)