export module ATR.Virtual.Interface;

import ATR.Virtual.Entry;
import Meta.String.Literal;
import Meta.String.Alias;
import Meta.Lex.Match;
import Meta.Lex.FreeFunctionTokenizer;

using ::Meta::ID_T;
using ::Meta::String::Literal;

export namespace
	ATR::Virtual
{
	/// helper alias. builds a function ID type and extracts raw signature and noexcept qualifier
	template
		<	Literal
				t_vFunctionName
		,	typename
				t_tSignature
		>
	using
		Interface
	=	Entry
		<	ID_T
			<	t_vFunctionName
			>
		,	::Meta::Match_To
			<	t_tSignature
			,	::Meta::Lex::FreeFunctionTokenizer
			>
		>
	;
}
