(* Ocamllex scanner for TPL *)

{ open Parser }


(* Add flaot and good string support *)
rule token = parse
  [' ' '\t' '\r' '\n'] { token lexbuf } (* Whitespace *)
| "/*"     { multilinecomment lexbuf }           (* Comments *)
| "//"     { singlelinecomment lexbuf }           (* Comments *)
| '"' ([^ '"']* as strliteral) '"' { STRLITERAL(strliteral) }
| (['0'-'9']* '.' ['0'-'9']*) as l   { FLOATLITERAL(l)}
| '('      { LPAREN }
| ')'      { RPAREN }
| '{'      { LBRACE }
| '}'      { RBRACE }
| '['      { LBRACKET }
| ']'      { RBRACKET }
| ';'      { SEMI }
| '.'      { DOT }
| ','      { COMMA }
| '+'      { PLUS }
| '-'      { MINUS }
| '*'      { TIMES }
| '/'      { DIVIDE }
| '='      { ASSIGN }
| "=="     { EQ }
| "!="     { NEQ }
| '<'      { LT }
| "<="     { LEQ }
| ">"      { GT }
| ">="     { GEQ }
| "&&"     { AND }
| "||"     { OR }
| "!"      { NOT }
| "if"     { IF }
| "else"   { ELSE }
| "for"    { FOR }
| "while"  { WHILE }
| "return" { RETURN }
| "array int" { INTARRAY }
| "array float" { FLOATARRAY }
| "array string" { STRARRAY } 
| "int"    { INT }
| "string" { STRING }
| "float" { FLOAT }
| "table" { TABLE }
| "bool"   { BOOL }
| "void"   { VOID }
| "true"   { TRUE }
| "false"  { FALSE }
| ['0'-'9']+ as lxm { LITERAL(int_of_string lxm) }
| ['a'-'z' 'A'-'Z']['a'-'z' 'A'-'Z' '0'-'9' '_']* as lxm { ID(lxm) }
| eof { EOF }
| _ as char { raise (Failure("illegal character " ^ Char.escaped char)) }

and multilinecomment = parse
  "*/" { token lexbuf }
| _    { multilinecomment lexbuf }

and singlelinecomment = parse
  ['\r' '\n'] { token lexbuf }
| _    { singlelinecomment lexbuf }
