export module ATR.Virtual.Interface;

import ATR.Virtual.Entry;
import Meta.ID.StringLiteral;
import Meta.ID.Alias;
import Meta.Lex.Function.Tokenizer;
import Meta.Lex.Function.Noexcept;
import Meta.Lex.Match;

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
			,	::Meta::Lex::Function::Tokenizer<>
			,	::Meta::Lex::Function::Noexcept
			>
		>
	;
}
