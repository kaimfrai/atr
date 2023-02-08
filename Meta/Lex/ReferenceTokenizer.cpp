export module Meta.Lex.ReferenceTokenizer;

import Meta.Lex.Reference.LValue;
import Meta.Lex.Reference.RValue;
import Meta.Lex.Match;

export namespace
	Meta::Lex
{
	using
		ReferenceTokenizer
	=	Match
		<	Reference::LValue
		,	Reference::RValue
		>
	;
}
