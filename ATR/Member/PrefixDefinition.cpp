export module ATR.Member.PrefixDefinition;

import ATR.Member.InfixDefinition;

import Meta.ID.StringLiteral;

using ::Meta::StringLiteral;

export namespace
	ATR::Member
{
	///	Suffixes all member names of the Definition
	template
		<	Meta::StringLiteral
				t_vType
		,	Meta::StringLiteral
				t_vPrefix
			=	t_vType
		>
	auto constexpr inline
		PrefixDefinition_For
	=	InfixDefinition_For
		<	t_vPrefix
		,	t_vType
		,	""
		>
	;
}
