
%%

%class MiniJava
%standalone

whitespace = [ \t\n\r]
comentarios = "/*"~"*/"
delimitadores = ";" | "." | "," | "=" | "(" | ")" | "[" | "]" | "{" | "}"
digitos = [1-9]
inteiros =  ({digitos}+(0|{digitos})*)|0 
flutuantes = {inteiros}"."{inteiros}+
letras  = [a-z] | [A-Z]
underline = "_"
identificadores = ({underline}|{letras})({letras}|{underline}|({digitos}|0))*

%%

"class"		{ System.out.println("class"); }
"public"		{ System.out.println("public"); }
"extends"		{ System.out.println("extends"); }
"static"		{ System.out.println("static"); }  
"void"		{ System.out.println("void"); }  
"int"			{ System.out.println("int"); }                                             
"boolean"     { System.out.println("boolean"); }
"while"       { System.out.println("while"); }
"if"          { System.out.println("if"); }
"else"        { System.out.println("else"); }
"return"      { System.out.println("return"); }

"||"          { System.out.println("||"); }
"&&"          { System.out.println("&&"); }
"=="          { System.out.println("=="); }
"!="          { System.out.println("!="); }
"<"           { System.out.println("<"); }
"<="          { System.out.println("<="); }
">"           { System.out.println(">"); }
">="          { System.out.println(">="); }
"+"           { System.out.println("SOMA"); }
"-"           { System.out.println("SUBTRAI"); }
"*"           { System.out.println("MULTIPLICA"); }
"/"           { System.out.println("DIVIDE"); }
"%"           { System.out.println("MOD"); }
"!"           { System.out.println("NEGACAO"); }

"false"       { System.out.println("FALSE"); }
"true"        { System.out.println("TRUE"); }
"this"        { System.out.println("THIS"); }
"new"         { System.out.println("NEW"); }


{delimitadores}  {System.out.println("DELIMITADOR!!");}
{whitespace} {}
{comentarios} {/* comment */}
{identificadores} { System.out.println("IDENTIFICADOR!!"); }
{inteiros} {System.out.println(yytext());}
{flutuantes} {System.out.println(yytext());}

[^] { throw new Error("LEXICAL ERROR!!!"); }
