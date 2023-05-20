export module ATR.Virtual.Interface;

import ATR.Virtual.Entry;
import Meta.String.StringLiteral;
import Meta.String.Alias;
import Meta.Lex.Match;
import Meta.Lex.FreeFunctionTokenizer;

using ::Meta::StringLiteral;
using ::Meta::ID_T;

export namespace
	ATR::Virtual
{
	/// helper alias. builds a function ID type and extracts raw signature and noexcept qualifier
	template
		<	StringLiteral
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
