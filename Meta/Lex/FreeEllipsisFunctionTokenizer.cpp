export module Meta.Lex.FreeEllipsisFunctionTokenizer;

import Meta.Lex.Function.Ellipsis;
import Meta.Lex.Function.EllipsisNoexcept;
import Meta.Lex.Match;

export namespace
	Meta::Lex
{
	using
		FreeEllipsisFunctionTokenizer
	=	Match
		<	Function::Ellipsis
		,	Function::EllipsisNoexcept
		>
	;
}
