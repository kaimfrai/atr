export module ATR.Member.Config;

import ATR.Member.ConfigBuilder;
import ATR.Member.ConfigData;
import ATR.Member.Finalize;

import Meta.String.Alias;
import Meta.String.Concept;
import Meta.String.Literal;

using ::Meta::ProtoID;
using ::Meta::ID_T;
using ::Meta::StringLiteral;

export namespace
	ATR::Member
{
	template
		<	ProtoID
				t_tTypeName
		,	typename
				t_tConfigBuilder
		>
	ConfigData constexpr
		FinalizedConfig_Of
	=	Finalize
		(	BuiltConfig_Of
			<	t_tTypeName
			,	t_tConfigBuilder
			>
		)
	;


	template
		<	StringLiteral
				t_vTypeName
		>
	ConfigData const constexpr
	&	Config_Of
	=	FinalizedConfig_Of
		<	ID_T<t_vTypeName>
		,	ConfigBuilder
		>
	;
}
