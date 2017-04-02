type token =
  | SEMI
  | LPAREN
  | RPAREN
  | LBRACE
  | RBRACE
  | LBRACKET
  | RBRACKET
  | COMMA
  | DOT
  | PLUS
  | MINUS
  | TIMES
  | DIVIDE
  | ASSIGN
  | NOT
  | EQ
  | NEQ
  | LT
  | LEQ
  | GT
  | GEQ
  | TRUE
  | FALSE
  | AND
  | OR
  | RETURN
  | IF
  | ELSE
  | FOR
  | WHILE
  | INT
  | BOOL
  | VOID
  | STRING
  | FLOAT
  | INTARRAY
  | FLOATARRAY
  | STRARRAY
  | TABLE
  | LITERAL of (int)
  | STRLITERAL of (string)
  | FLOATLITERAL of (string)
  | ID of (string)
  | EOF

open Parsing;;
let _ = parse_error;;
# 4 "parser.mly"
open Ast
# 52 "parser.ml"
let yytransl_const = [|
  257 (* SEMI *);
  258 (* LPAREN *);
  259 (* RPAREN *);
  260 (* LBRACE *);
  261 (* RBRACE *);
  262 (* LBRACKET *);
  263 (* RBRACKET *);
  264 (* COMMA *);
  265 (* DOT *);
  266 (* PLUS *);
  267 (* MINUS *);
  268 (* TIMES *);
  269 (* DIVIDE *);
  270 (* ASSIGN *);
  271 (* NOT *);
  272 (* EQ *);
  273 (* NEQ *);
  274 (* LT *);
  275 (* LEQ *);
  276 (* GT *);
  277 (* GEQ *);
  278 (* TRUE *);
  279 (* FALSE *);
  280 (* AND *);
  281 (* OR *);
  282 (* RETURN *);
  283 (* IF *);
  284 (* ELSE *);
  285 (* FOR *);
  286 (* WHILE *);
  287 (* INT *);
  288 (* BOOL *);
  289 (* VOID *);
  290 (* STRING *);
  291 (* FLOAT *);
  292 (* INTARRAY *);
  293 (* FLOATARRAY *);
  294 (* STRARRAY *);
  295 (* TABLE *);
    0 (* EOF *);
    0|]

let yytransl_block = [|
  296 (* LITERAL *);
  297 (* STRLITERAL *);
  298 (* FLOATLITERAL *);
  299 (* ID *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\004\000\006\000\006\000\009\000\
\009\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
\005\000\005\000\007\000\007\000\003\000\008\000\008\000\010\000\
\010\000\010\000\010\000\010\000\010\000\010\000\010\000\012\000\
\012\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
\011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
\011\000\011\000\011\000\011\000\011\000\011\000\011\000\011\000\
\011\000\013\000\013\000\014\000\014\000\000\000"

let yylen = "\002\000\
\002\000\000\000\002\000\002\000\009\000\000\000\001\000\002\000\
\004\000\001\000\001\000\001\000\001\000\001\000\001\000\001\000\
\001\000\001\000\000\000\002\000\003\000\000\000\002\000\002\000\
\002\000\003\000\003\000\005\000\007\000\009\000\005\000\000\000\
\001\000\004\000\001\000\001\000\001\000\001\000\001\000\001\000\
\003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
\003\000\003\000\003\000\003\000\002\000\002\000\003\000\004\000\
\003\000\000\000\001\000\001\000\003\000\002\000"

let yydefred = "\000\000\
\002\000\000\000\062\000\000\000\010\000\011\000\012\000\014\000\
\013\000\016\000\017\000\015\000\018\000\001\000\003\000\004\000\
\000\000\000\000\021\000\000\000\000\000\000\000\000\000\008\000\
\000\000\000\000\019\000\000\000\000\000\009\000\020\000\000\000\
\000\000\000\000\000\000\022\000\005\000\000\000\000\000\038\000\
\039\000\000\000\000\000\000\000\000\000\035\000\036\000\037\000\
\000\000\023\000\000\000\000\000\000\000\053\000\054\000\025\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\024\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\057\000\027\000\026\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\043\000\044\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\056\000\
\000\000\034\000\000\000\000\000\031\000\000\000\000\000\000\000\
\029\000\000\000\000\000\030\000"

let yydgoto = "\002\000\
\003\000\004\000\015\000\016\000\017\000\022\000\029\000\033\000\
\023\000\050\000\051\000\082\000\085\000\086\000"

let yysindex = "\011\000\
\000\000\000\000\000\000\001\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\218\254\132\255\000\000\022\001\234\254\026\255\038\255\000\000\
\045\255\022\001\000\000\011\255\022\001\000\000\000\000\017\255\
\046\255\061\255\098\255\000\000\000\000\098\255\098\255\000\000\
\000\000\041\255\064\255\089\255\096\255\000\000\000\000\000\000\
\000\255\000\000\244\255\230\000\088\255\000\000\000\000\000\000\
\040\000\098\255\098\255\098\255\098\255\039\255\098\255\000\000\
\098\255\098\255\098\255\098\255\098\255\098\255\098\255\098\255\
\098\255\098\255\098\255\098\255\000\000\000\000\000\000\249\000\
\004\000\103\255\012\001\004\000\105\255\108\255\099\255\004\000\
\133\255\133\255\000\000\000\000\254\254\254\254\084\255\084\255\
\084\255\084\255\130\000\028\001\187\255\098\255\187\255\000\000\
\098\255\000\000\094\255\061\000\000\000\004\000\187\255\098\255\
\000\000\124\255\187\255\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\134\255\000\000\000\000\139\255\000\000\
\000\000\000\000\000\000\000\000\121\255\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\223\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\148\255\000\000\149\255\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\012\255\000\000\000\000\050\255\000\000\150\255\000\000\104\255\
\086\000\111\000\000\000\000\000\250\255\067\000\136\000\161\000\
\186\000\211\000\077\255\019\255\000\000\000\000\000\000\000\000\
\000\000\000\000\154\255\000\000\000\000\116\255\000\000\151\255\
\000\000\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\106\000\000\000\045\000\000\000\000\000\119\000\
\000\000\200\255\221\255\048\000\000\000\000\000"

let yytablesize = 573
let yytable = "\052\000\
\014\000\061\000\054\000\055\000\018\000\062\000\057\000\065\000\
\066\000\067\000\068\000\001\000\033\000\063\000\033\000\071\000\
\072\000\073\000\074\000\052\000\024\000\052\000\080\000\081\000\
\083\000\084\000\052\000\088\000\025\000\089\000\090\000\091\000\
\092\000\093\000\094\000\095\000\096\000\097\000\098\000\099\000\
\100\000\056\000\035\000\052\000\107\000\026\000\109\000\035\000\
\027\000\036\000\037\000\038\000\060\000\030\000\113\000\039\000\
\038\000\060\000\116\000\034\000\039\000\019\000\040\000\041\000\
\021\000\058\000\108\000\040\000\041\000\110\000\028\000\042\000\
\043\000\032\000\044\000\045\000\081\000\051\000\087\000\051\000\
\046\000\047\000\048\000\049\000\051\000\046\000\047\000\048\000\
\049\000\035\000\059\000\036\000\078\000\065\000\066\000\067\000\
\068\000\060\000\038\000\035\000\051\000\051\000\039\000\102\000\
\055\000\106\000\055\000\104\000\038\000\040\000\041\000\055\000\
\039\000\042\000\043\000\105\000\044\000\045\000\061\000\040\000\
\041\000\111\000\022\000\061\000\022\000\022\000\115\000\046\000\
\047\000\048\000\049\000\022\000\019\000\020\000\031\000\022\000\
\006\000\046\000\047\000\048\000\049\000\007\000\022\000\022\000\
\067\000\068\000\022\000\022\000\032\000\022\000\022\000\058\000\
\059\000\032\000\053\000\028\000\000\000\028\000\028\000\114\000\
\022\000\022\000\022\000\022\000\028\000\000\000\000\000\000\000\
\028\000\000\000\000\000\000\000\000\000\000\000\000\000\028\000\
\028\000\000\000\000\000\028\000\028\000\000\000\028\000\028\000\
\000\000\000\000\000\000\000\000\035\000\000\000\036\000\000\000\
\000\000\028\000\028\000\028\000\028\000\038\000\000\000\000\000\
\000\000\039\000\000\000\000\000\000\000\000\000\000\000\000\000\
\040\000\041\000\000\000\000\000\042\000\043\000\000\000\044\000\
\045\000\000\000\000\000\000\000\000\000\000\000\000\000\040\000\
\000\000\040\000\046\000\047\000\048\000\049\000\040\000\000\000\
\040\000\040\000\040\000\040\000\000\000\000\000\040\000\040\000\
\040\000\040\000\040\000\040\000\064\000\000\000\040\000\040\000\
\000\000\000\000\045\000\000\000\045\000\065\000\066\000\067\000\
\068\000\045\000\000\000\069\000\070\000\071\000\072\000\073\000\
\074\000\045\000\045\000\075\000\076\000\065\000\066\000\067\000\
\068\000\045\000\045\000\069\000\070\000\071\000\072\000\073\000\
\074\000\000\000\000\000\075\000\076\000\000\000\000\000\005\000\
\006\000\007\000\008\000\009\000\010\000\011\000\012\000\013\000\
\079\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\065\000\066\000\067\000\068\000\000\000\000\000\069\000\
\070\000\071\000\072\000\073\000\074\000\112\000\000\000\075\000\
\076\000\000\000\000\000\046\000\000\000\046\000\065\000\066\000\
\067\000\068\000\046\000\000\000\069\000\070\000\071\000\072\000\
\073\000\074\000\046\000\046\000\075\000\076\000\041\000\000\000\
\041\000\000\000\046\000\046\000\000\000\041\000\000\000\041\000\
\041\000\000\000\000\000\000\000\000\000\041\000\041\000\041\000\
\041\000\041\000\041\000\000\000\000\000\041\000\041\000\042\000\
\000\000\042\000\000\000\000\000\000\000\000\000\042\000\000\000\
\042\000\042\000\000\000\000\000\000\000\000\000\042\000\042\000\
\042\000\042\000\042\000\042\000\000\000\000\000\042\000\042\000\
\047\000\000\000\047\000\065\000\066\000\067\000\068\000\047\000\
\000\000\069\000\070\000\071\000\072\000\073\000\074\000\047\000\
\047\000\047\000\047\000\047\000\047\000\000\000\000\000\047\000\
\047\000\048\000\000\000\048\000\000\000\000\000\000\000\000\000\
\048\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\048\000\048\000\048\000\048\000\048\000\048\000\000\000\000\000\
\048\000\048\000\049\000\000\000\049\000\000\000\000\000\000\000\
\000\000\049\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\049\000\049\000\049\000\049\000\049\000\049\000\000\000\
\000\000\049\000\049\000\050\000\000\000\050\000\000\000\000\000\
\000\000\000\000\050\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\050\000\050\000\050\000\050\000\050\000\050\000\
\077\000\000\000\050\000\050\000\000\000\000\000\000\000\065\000\
\066\000\067\000\068\000\000\000\000\000\069\000\070\000\071\000\
\072\000\073\000\074\000\101\000\000\000\075\000\076\000\000\000\
\000\000\000\000\065\000\066\000\067\000\068\000\000\000\000\000\
\069\000\070\000\071\000\072\000\073\000\074\000\103\000\000\000\
\075\000\076\000\000\000\000\000\000\000\065\000\066\000\067\000\
\068\000\000\000\000\000\069\000\070\000\071\000\072\000\073\000\
\074\000\000\000\000\000\075\000\076\000\065\000\066\000\067\000\
\068\000\000\000\000\000\069\000\070\000\071\000\072\000\073\000\
\074\000\000\000\000\000\075\000\005\000\006\000\007\000\008\000\
\009\000\010\000\011\000\012\000\013\000"

let yycheck = "\035\000\
\000\000\002\001\038\000\039\000\043\001\006\001\042\000\010\001\
\011\001\012\001\013\001\001\000\001\001\014\001\003\001\018\001\
\019\001\020\001\021\001\001\001\043\001\003\001\058\000\059\000\
\060\000\061\000\008\001\063\000\003\001\065\000\066\000\067\000\
\068\000\069\000\070\000\071\000\072\000\073\000\074\000\075\000\
\076\000\001\001\002\001\025\001\101\000\008\001\103\000\002\001\
\004\001\004\001\005\001\011\001\003\001\043\001\111\000\015\001\
\011\001\008\001\115\000\043\001\015\001\001\001\022\001\023\001\
\020\000\002\001\102\000\022\001\023\001\105\000\026\000\026\001\
\027\001\029\000\029\001\030\001\112\000\001\001\040\001\003\001\
\040\001\041\001\042\001\043\001\008\001\040\001\041\001\042\001\
\043\001\002\001\002\001\004\001\005\001\010\001\011\001\012\001\
\013\001\002\001\011\001\002\001\024\001\025\001\015\001\001\001\
\001\001\007\001\003\001\003\001\011\001\022\001\023\001\008\001\
\015\001\026\001\027\001\008\001\029\001\030\001\003\001\022\001\
\023\001\028\001\002\001\008\001\004\001\005\001\003\001\040\001\
\041\001\042\001\043\001\011\001\001\001\002\001\029\000\015\001\
\003\001\040\001\041\001\042\001\043\001\003\001\022\001\023\001\
\012\001\013\001\026\001\027\001\001\001\029\001\030\001\003\001\
\003\001\003\001\036\000\002\001\255\255\004\001\005\001\112\000\
\040\001\041\001\042\001\043\001\011\001\255\255\255\255\255\255\
\015\001\255\255\255\255\255\255\255\255\255\255\255\255\022\001\
\023\001\255\255\255\255\026\001\027\001\255\255\029\001\030\001\
\255\255\255\255\255\255\255\255\002\001\255\255\004\001\255\255\
\255\255\040\001\041\001\042\001\043\001\011\001\255\255\255\255\
\255\255\015\001\255\255\255\255\255\255\255\255\255\255\255\255\
\022\001\023\001\255\255\255\255\026\001\027\001\255\255\029\001\
\030\001\255\255\255\255\255\255\255\255\255\255\255\255\001\001\
\255\255\003\001\040\001\041\001\042\001\043\001\008\001\255\255\
\010\001\011\001\012\001\013\001\255\255\255\255\016\001\017\001\
\018\001\019\001\020\001\021\001\001\001\255\255\024\001\025\001\
\255\255\255\255\001\001\255\255\003\001\010\001\011\001\012\001\
\013\001\008\001\255\255\016\001\017\001\018\001\019\001\020\001\
\021\001\016\001\017\001\024\001\025\001\010\001\011\001\012\001\
\013\001\024\001\025\001\016\001\017\001\018\001\019\001\020\001\
\021\001\255\255\255\255\024\001\025\001\255\255\255\255\031\001\
\032\001\033\001\034\001\035\001\036\001\037\001\038\001\039\001\
\001\001\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\010\001\011\001\012\001\013\001\255\255\255\255\016\001\
\017\001\018\001\019\001\020\001\021\001\001\001\255\255\024\001\
\025\001\255\255\255\255\001\001\255\255\003\001\010\001\011\001\
\012\001\013\001\008\001\255\255\016\001\017\001\018\001\019\001\
\020\001\021\001\016\001\017\001\024\001\025\001\001\001\255\255\
\003\001\255\255\024\001\025\001\255\255\008\001\255\255\010\001\
\011\001\255\255\255\255\255\255\255\255\016\001\017\001\018\001\
\019\001\020\001\021\001\255\255\255\255\024\001\025\001\001\001\
\255\255\003\001\255\255\255\255\255\255\255\255\008\001\255\255\
\010\001\011\001\255\255\255\255\255\255\255\255\016\001\017\001\
\018\001\019\001\020\001\021\001\255\255\255\255\024\001\025\001\
\001\001\255\255\003\001\010\001\011\001\012\001\013\001\008\001\
\255\255\016\001\017\001\018\001\019\001\020\001\021\001\016\001\
\017\001\018\001\019\001\020\001\021\001\255\255\255\255\024\001\
\025\001\001\001\255\255\003\001\255\255\255\255\255\255\255\255\
\008\001\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\016\001\017\001\018\001\019\001\020\001\021\001\255\255\255\255\
\024\001\025\001\001\001\255\255\003\001\255\255\255\255\255\255\
\255\255\008\001\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\016\001\017\001\018\001\019\001\020\001\021\001\255\255\
\255\255\024\001\025\001\001\001\255\255\003\001\255\255\255\255\
\255\255\255\255\008\001\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\016\001\017\001\018\001\019\001\020\001\021\001\
\003\001\255\255\024\001\025\001\255\255\255\255\255\255\010\001\
\011\001\012\001\013\001\255\255\255\255\016\001\017\001\018\001\
\019\001\020\001\021\001\003\001\255\255\024\001\025\001\255\255\
\255\255\255\255\010\001\011\001\012\001\013\001\255\255\255\255\
\016\001\017\001\018\001\019\001\020\001\021\001\003\001\255\255\
\024\001\025\001\255\255\255\255\255\255\010\001\011\001\012\001\
\013\001\255\255\255\255\016\001\017\001\018\001\019\001\020\001\
\021\001\255\255\255\255\024\001\025\001\010\001\011\001\012\001\
\013\001\255\255\255\255\016\001\017\001\018\001\019\001\020\001\
\021\001\255\255\255\255\024\001\031\001\032\001\033\001\034\001\
\035\001\036\001\037\001\038\001\039\001"

let yynames_const = "\
  SEMI\000\
  LPAREN\000\
  RPAREN\000\
  LBRACE\000\
  RBRACE\000\
  LBRACKET\000\
  RBRACKET\000\
  COMMA\000\
  DOT\000\
  PLUS\000\
  MINUS\000\
  TIMES\000\
  DIVIDE\000\
  ASSIGN\000\
  NOT\000\
  EQ\000\
  NEQ\000\
  LT\000\
  LEQ\000\
  GT\000\
  GEQ\000\
  TRUE\000\
  FALSE\000\
  AND\000\
  OR\000\
  RETURN\000\
  IF\000\
  ELSE\000\
  FOR\000\
  WHILE\000\
  INT\000\
  BOOL\000\
  VOID\000\
  STRING\000\
  FLOAT\000\
  INTARRAY\000\
  FLOATARRAY\000\
  STRARRAY\000\
  TABLE\000\
  EOF\000\
  "

let yynames_block = "\
  LITERAL\000\
  STRLITERAL\000\
  FLOATLITERAL\000\
  ID\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    Obj.repr(
# 34 "parser.mly"
            ( _1 )
# 388 "parser.ml"
               : Ast.program))
; (fun __caml_parser_env ->
    Obj.repr(
# 37 "parser.mly"
                 ( [], [] )
# 394 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 38 "parser.mly"
               ( (_2 :: fst _1), snd _1 )
# 402 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'decls) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'fdecl) in
    Obj.repr(
# 39 "parser.mly"
               ( fst _1, (_2 :: snd _1) )
# 410 "parser.ml"
               : 'decls))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 8 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 7 : string) in
    let _4 = (Parsing.peek_val __caml_parser_env 5 : 'formals_opt) in
    let _7 = (Parsing.peek_val __caml_parser_env 2 : 'vdecl_list) in
    let _8 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 43 "parser.mly"
     ( { typ = _1;
	 fname = _2;
	 formals = _4;
	 locals = List.rev _7;
	 body = List.rev _8 } )
# 425 "parser.ml"
               : 'fdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 50 "parser.mly"
                  ( [] )
# 431 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'formal_list) in
    Obj.repr(
# 51 "parser.mly"
                  ( List.rev _1 )
# 438 "parser.ml"
               : 'formals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 54 "parser.mly"
                             ( [(_1,_2)] )
# 446 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'formal_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'typ) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 55 "parser.mly"
                             ( (_3,_4) :: _1 )
# 455 "parser.ml"
               : 'formal_list))
; (fun __caml_parser_env ->
    Obj.repr(
# 58 "parser.mly"
        ( Int )
# 461 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 59 "parser.mly"
         ( Bool )
# 467 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 60 "parser.mly"
         ( Void )
# 473 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 61 "parser.mly"
          (Float)
# 479 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 62 "parser.mly"
           (String)
# 485 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 63 "parser.mly"
             (Strarray)
# 491 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 64 "parser.mly"
             (Intarray)
# 497 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 65 "parser.mly"
               (Floatarray)
# 503 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 66 "parser.mly"
          (Table)
# 509 "parser.ml"
               : 'typ))
; (fun __caml_parser_env ->
    Obj.repr(
# 69 "parser.mly"
                     ( [] )
# 515 "parser.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'vdecl_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'vdecl) in
    Obj.repr(
# 70 "parser.mly"
                     ( _2 :: _1 )
# 523 "parser.ml"
               : 'vdecl_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'typ) in
    let _2 = (Parsing.peek_val __caml_parser_env 1 : string) in
    Obj.repr(
# 73 "parser.mly"
               ( (_1, _2) )
# 531 "parser.ml"
               : 'vdecl))
; (fun __caml_parser_env ->
    Obj.repr(
# 76 "parser.mly"
                   ( [] )
# 537 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 77 "parser.mly"
                   ( _2 :: _1 )
# 545 "parser.ml"
               : 'stmt_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 80 "parser.mly"
              ( Expr _1 )
# 552 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 81 "parser.mly"
                ( Return Noexpr )
# 558 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 82 "parser.mly"
                     ( Return _2 )
# 565 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'stmt_list) in
    Obj.repr(
# 83 "parser.mly"
                            ( Block(List.rev _2) )
# 572 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 84 "parser.mly"
                                            ( If(_3, _5, Block([])) )
# 580 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 2 : 'stmt) in
    let _7 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 85 "parser.mly"
                                            ( If(_3, _5, _7) )
# 589 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 6 : 'expr_opt) in
    let _5 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _7 = (Parsing.peek_val __caml_parser_env 2 : 'expr_opt) in
    let _9 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 87 "parser.mly"
     ( For(_3, _5, _7, _9) )
# 599 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'stmt) in
    Obj.repr(
# 88 "parser.mly"
                                  ( While(_3, _5) )
# 607 "parser.ml"
               : 'stmt))
; (fun __caml_parser_env ->
    Obj.repr(
# 91 "parser.mly"
                  ( Noexpr )
# 613 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 92 "parser.mly"
                  ( _1 )
# 620 "parser.ml"
               : 'expr_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : int) in
    Obj.repr(
# 95 "parser.mly"
                                  (IndexValue(_1 , _3))
# 628 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 96 "parser.mly"
                     ( Literal(_1) )
# 635 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 97 "parser.mly"
                     ( Strliteral(_1) )
# 642 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 98 "parser.mly"
                     ( Floatliteral (float_of_string _1) )
# 649 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 99 "parser.mly"
                     ( BoolLit(true) )
# 655 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 100 "parser.mly"
                     ( BoolLit(false) )
# 661 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 101 "parser.mly"
                     ( Id(_1) )
# 668 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 102 "parser.mly"
                     ( Binop(_1, Add,   _3) )
# 676 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 103 "parser.mly"
                     ( Binop(_1, Sub,   _3) )
# 684 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 104 "parser.mly"
                     ( Binop(_1, Mult,  _3) )
# 692 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 105 "parser.mly"
                     ( Binop(_1, Div,   _3) )
# 700 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 106 "parser.mly"
                     ( Binop(_1, Equal, _3) )
# 708 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 107 "parser.mly"
                     ( Binop(_1, Neq,   _3) )
# 716 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 108 "parser.mly"
                     ( Binop(_1, Less,  _3) )
# 724 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 109 "parser.mly"
                     ( Binop(_1, Leq,   _3) )
# 732 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 110 "parser.mly"
                     ( Binop(_1, Greater, _3) )
# 740 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 111 "parser.mly"
                     ( Binop(_1, Geq,   _3) )
# 748 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 112 "parser.mly"
                     ( Binop(_1, And,   _3) )
# 756 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 113 "parser.mly"
                     ( Binop(_1, Or,    _3) )
# 764 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 114 "parser.mly"
                         ( Unop(Neg, _2) )
# 771 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 115 "parser.mly"
                     ( Unop(Not, _2) )
# 778 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 116 "parser.mly"
                     ( Assign(_1, _3) )
# 786 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'actuals_opt) in
    Obj.repr(
# 117 "parser.mly"
                                 ( Call(_1, _3) )
# 794 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 118 "parser.mly"
                       ( _2 )
# 801 "parser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 121 "parser.mly"
                  ( [] )
# 807 "parser.ml"
               : 'actuals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'actuals_list) in
    Obj.repr(
# 122 "parser.mly"
                  ( List.rev _1 )
# 814 "parser.ml"
               : 'actuals_opt))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 125 "parser.mly"
                            ( [_1] )
# 821 "parser.ml"
               : 'actuals_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'actuals_list) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 126 "parser.mly"
                            ( _3 :: _1 )
# 829 "parser.ml"
               : 'actuals_list))
(* Entry program *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let program (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Ast.program)
