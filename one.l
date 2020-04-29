%{
	int ch=0,lines=0,words=0,ctr=0;
%}

%%

\n		{lines++,ctr++;}
([ ])	{words++;}
.		{ch++;}

%%

int yywrap()
{
	return 1;
}

int main(void)
{
	yylex();
	printf("No of characters : %d",ch);
	printf("\n");
	printf("No of words : %d",(words+ctr));
	printf("\n");
	printf("No of lines : %d",lines);
	printf("\n");
	return 0;
}
