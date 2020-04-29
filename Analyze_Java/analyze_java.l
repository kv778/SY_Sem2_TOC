%{
		
%}



DIGIT			[0-9]
NUMBER			{DIGIT}+
TEXT			[A-Za-z]
STRINGLITERAL	\"[^\n]*\"
KEYWORDS		abstract|continue|goto|assert|this|implements|throw|break|throws|instanceof|return|transient|extends|try|catch|final|interface|static|finally|strictfp|volatile|class|native|super|const|new|synchronized
ACCESS			"public"|"private"|"protected"|"default"
PREPROCESSOR 	import|package
DATATYPE		boolean|protected|double|byte|int|short|void|char|long|float|String
CONDITIONAL		if|switch|else|case
ITERATIVE		while|for|do
ACCESSSPECIFIER	default|private|public|
SC 				";"
IDENTIFIER		[A-Za-z$_]({DIGIT}|{TEXT}|_|$)*
ARITH_OP		"+"|"-"|"/"|"%"|"*";
LOGICAL_OP		"&&"|"||"|"!"|"!="
REL_OP			"<"|">"|"<="|">="|"=="
UNARY			"++"|"--"


%%

[ \n\t]+		  	;
{PREPROCESSOR}		{ printf("%s\t==> PREPROCESSOR\n",yytext); }
{CONDITIONAL}		{ printf("%s\t==> CONDITIONAL\n",yytext); }
{ITERATIVE}			{ printf("%s\t==> ITERATIVE\n",yytext); }
{DATATYPE}			{ printf("%s\t==> DATATYPE\n",yytext); }
{ACCESS}			{ printf("%s\t==> ACCESSSPECIFIER\n",yytext); }
{KEYWORDS}			{ printf("%s\t==> KEYWORDS\n",yytext); }
{STRINGLITERAL}		{ printf("%s\t==> STRINGLITERAL\n",yytext); }
{IDENTIFIER}		{ printf("%s\t==> IDENTIFIER\n",yytext); }
{NUMBER}			{ printf("%s\t==> CONSTANT INTEGER\n",yytext); }
{SC}				{ printf("%s\t==> DELIMITER\n",yytext); }
{UNARY}				{ printf("%s\t==> UNARY OP\n",yytext); }
{ARITH_OP}			{ printf("%s\t==> ARITHMETIC OPERATOR\n",yytext); }
{LOGICAL_OP}		{ printf("%s\t==> LOGICAL OP\n",yytext); }
{REL_OP}			{ printf("%s\t==> RELATIONAL OP\n",yytext); }
"="					{ printf("%s\t==> ASSIGNMENT OP\n",yytext); }
"{" 				{ printf("%s\t==> BLOCK BEGIN\n",yytext); }
"}" 				{ printf("%s\t==> BLOCK END\n",yytext); }
"(" 				{ printf("%s\t==> PARANTHESIS BEGIN\n",yytext); }
")"					{ printf("%s\t==> PARENTHESIS END\n",yytext); }
. 					;

%%

int yywrap()
{
	return 1;
}

int main()
{
	yyin = fopen("input.java","r");
	
	yylex();
	
	return 0;	
}
