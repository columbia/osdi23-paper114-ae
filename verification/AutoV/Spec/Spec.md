## Spec Language Definition

The Spec language is used to define the specification of a verification project. It consists of four major parts:
- Define Types
- Declare variables and functions
- Define constants and functions
- Define layer structures of the project (TODO)

## Types, Values

- `Z`: Integers, `1`, `2`, `3`, ...

    Arithmetic Operations: `+`, `-`, `*`, `/`, `mod`, `<<`, `>>`, `&`, `|`, `~`, `^`, Returns `Z`

    Comparison Operatiosn: `=?`, `>?`, `>=?`, `<?`, `<=?`, Returns `Bool`

- `Bool`: Booleans, `true`, `false`

    Operations: `&&`, `||`, `!`, Returns `Bool`

- `String`: Strings, `"hello"`, `"world"`

- `(T1 * T2 ...)`: Tuples, `(1, "hello")`, `(2, "world")`

- `(List T)`: Lists, `[1, 2, 3]`, `["hello", "world"]`

    Operations: `<elem> :: <list>` (prepend), `<list> ++ <list>` (concat)

- `(Option T)`: Options, `Some 1`, `Some "hello"`, `None`

- `(ZMap.t T)`: Maps from `Z` to `T`

    Operations: `<map> @ <key>` (ZMap.get); `<map> # <key> == <value>` (ZMap.set)

- Record:

    `Record <name> := mk<name> { <field_1>: <type_1>; <field_2>: <type_2>; ... }.`

    Let's assume that any record `R` has a constructor `mkR`.

    Operations: 

        <expr>.(<field>) (get field)
        <expr> {<field> : <expr>} (set field)

- `Inductive`

        Inductive <name> := 
        | <constructor_1> (<arg_1>: <type_1>) (<arg_2>: <type_2>) ...
        | <constructor_2> ....
        | ... .

    `<constructor>` is a name.

- `<type_1> -> <type_2> -> ...`: Function

- `Prop`: predicates, can only use in Assertions.

    `forall (<arg_1>: <type_1>) (<arg_2>: <type_2>) ... , <prop>`

    `exists (<arg_1>: <type_1>) (<arg_2>: <type_2>) ... , <prop>`

    `/\`, `\/`. `~`, `->`, `<->`, `=`, `<>`, `>`, `>=`, `<`, `<=` ...

## Expressions

- Let Statement

    - Simple variable assignment: `let <name> := <expr> in <expr>`
    - Match Tuple with `let` statement: `let (<name_1>, <name_2>, ...) := <expr> in <expr>`
    - Match Option with `let` statement variant `when <name> == <expr_1>; <expr_2>`.

        This is equivalent to `match <expr_1> with | Some <name> => <expr_2> | None => None end`
    
- Match Statement 

    `match <expr> with | <pattern_1> => <expr_1> | <pattern_2> => <expr_2> ... end`

- If Statement

    `if <expr> then <expr> else <expr>`

- Assertion

    `rely <prop>; <expr>`

- Function Call

    `<func_name> <arg_1> <arg_2> ...`

- Operations

    See the previous section.

## Declaration

`Variable <name>: <type>.`

## Definition

`Definition <name> (<arg_1>: <type_1>) (<arg_2>: <type_2>) ... : <type> := <expr>.`

`Fixpoint <name> (<arg_1>: <type_1>) (<arg_2>: <type_2>) ... : <type> := <expr>.`

## Program Structure

- Import another file: `Import <name>.`

- Write Comment: `// <comment>` 

    We do single line comment only for now.

- Setion:

    `Section <name>.`

    `End <name>.`