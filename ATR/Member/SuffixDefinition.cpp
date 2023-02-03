export module ATR.Member.SuffixDefinition;

import ATR.Member.InfixDefinition;

import Meta.ID.StringLiteral;

using ::Meta::StringLiteral;

export namespace
	ATR::Member
{
	///	Suffixes all member names of the Definition
	template
		<	StringLiteral
				t_vType
		,	StringLiteral
				t_vSuffix
			=	t_vType
		>
	auto constexpr inline
		SuffixDefinition_For
	=	InfixDefinition_For
		<	""
		,	t_vType
		,	t_vSuffix
		>
	;
}
