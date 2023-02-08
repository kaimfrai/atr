export module Meta.Lex.FreeFunctionTokenizer;

import Meta.Lex.Function.Tokenizer;
import Meta.Lex.Function.Noexcept;
import Meta.Lex.Match;

export namespace
	Meta::Lex
{
	using
		FreeFunctionTokenizer
	=	Match
		<	Function::Tokenizer<>
		,	Function::Noexcept
		>
	;
}
