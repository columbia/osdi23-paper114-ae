grammar Spec;

program: statement* EOF;
statement:
	section_begin
	| section_end
	| typedef
	| def
	| decl
	| fixpoint
	| inductive_decl
	| record_decl
	| include
  | command;
typedef: (DEF name ':=' type '.');
def: (DEF name var_anno* ':' type ':=' expr '.');
decl: (PARAM name ':' type '.');
fixpoint: (FIXPOINT name var_anno* ':' type ':=' expr '.');
path: STR;
include: 'Include' path '.';
command: 'Hint' name+ '.';

section_begin: SECTION name '.';
section_end: SECTION_END name '.';

type:
	Z_type = 'Z'
	| bool_type = 'bool'
	| str_type = 'string'
	| type_type = 'Type'
	| prop_type = 'Prop'
	| list_type = 'list' type
	| option_type = 'option' type
	| map_type = 'ZMap.t' type
	| '(' type ( tup = '*' type  ) + ')'
	| domain = type '->' '(' codomain = type ')'
	| '(' par=type ')'
	| name;

expr:
	let_stmt
	| when_stmt
	| match_stmt
	| assert_stmt
	| anno_stmt
	| if_stmt
	| expr_op;

expr_op: 
	op=term term+
	| expr_op binop=(MULT | DIV | MOD) expr_op
	| expr_op binop=(ADD | MINUS | BITAND | BITOR) expr_op
	| expr_op binop=(BEQ | BNE | BGT | BGE | BLT | BLE | BAND | BOR | LSHIFT | RSHIFT | SEQ | SNE) expr_op
	| <assoc=right> expr_op binop=(APPEND | CONCAT) expr_op
	| exists_expr ',' expr_op
	| forall_expr ',' expr_op
	| expr_op map_set = SET expr_op '==' expr_op
	| expr_op map_get = GET expr_op
	| expr_op record_set2='{' name ':' expr_op '}'
	| expr_op ('.' '[' name ']')+ record_set = ':<' expr_op
	| expr_op binop=(EQUAL | NOT_EQUAL | LT | LTE | GT | GTE) expr_op
	| expr_op binop=(IFONLYIF | OR | AND) expr_op
	| <assoc=right> expr_op binop=IMPLIES expr_op
	| term;

term:
	LP par=expr RP
	| term record_get = '.' '(' name ')'
	| '(' uniop=(MINUS | NOT | BNOT) term ')'
	| tuple
	| value;

tuple: '(' expr (',' expr)+ ')';
func_call: name expr+;

forall_expr: FORALL var_anno+;
exists_expr: EXISTS var_anno+;
var_anno: '(' name ':' type ')';

let_stmt:
	(LET name ':=' expr 'in' expr)
	| (LET tuple ':=' expr 'in' expr);
when_stmt: WHEN ( name (',' name)* ) '==' expr ';' expr;

match_stmt: MATCH expr WITH match_branch+ END;
match_branch: '|' expr '=>' expr;
assert_stmt: RELY expr ';' expr;
anno_stmt: ANNO expr ';' expr;
if_stmt: IF expr THEN expr ELSE expr;

inductive_decl: INDUC name ':=' induct_arm+ '.';
induct_arm: '|' name var_anno*;

record_decl: RECORD name ':=' name '{' record_fields '}' '.';
record_fields: (name ':' type) (';' name ':' type)*;

value: name | number | bool | string;
mk: MK;
name: ID;
number: NUMBER;
string: STR;
bool: TRUE | FALSE;

MK: 'mk';
INDUC: 'Inductive';
RECORD: 'Record';
FIXPOINT: 'Fixpoint';
SECTION: 'Section';
SECTION_END: 'End';
APPEND: '::';
CONCAT: '++';

ADD: '+';
MINUS: '-';
MULT: '*';
DIV: '/';
MOD: 'mod';
LSHIFT: '<<';
RSHIFT: '>>';
BITAND: '&';
BITOR: '|\'';

BAND: '&&';
BOR: '||';
BEQ: '=?';
BNE: '<>?';
BGT: '>?';
BLT: '<?';
BGE: '>=?';
BLE: '<=?';

SEQ: '=s';
SNE: '<>s';

GET: '@';
SET: '#';

AND: '/\\';
OR: '\\/';
NOT: '~';
BNOT: '!';
IMPLIES: '->';
IFONLYIF: '<->';
EQUAL: '=';
NOT_EQUAL: '<>';
GT: '>';
LT: '<';
GTE: '>=';
LTE: '<=';

LP: '(';
RP: ')';
IF: 'if';
THEN: 'then';
LET: 'let';
ELSE: 'else';
PARAM: 'Parameter';
DEF: 'Definition';
WHEN: 'when';
FORALL: 'forall';
EXISTS: 'exists';
MATCH: 'match';
RETURN: 'return';
WITH: 'with';
END: 'end';
RELY: 'rely';
ANNO: 'anno';
TRUE: 'true';
FALSE: 'false';
NUMBER: [0-9]+;
STR: '"' .*? '"';
ID: [a-zA-Z_][a-zA-Z0-9_']*;
COMMENT: '(*' .*? '*)' -> skip;
WS: [ \t\r\n]+ -> skip;
