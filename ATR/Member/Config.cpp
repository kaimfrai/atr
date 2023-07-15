export module ATR.Member.Config;

import ATR.Member.ConfigBuilder;
import ATR.Member.ConfigData;

import Meta.ID;

using ::Meta::ProtoID;

export namespace
	ATR::Member
{
	template
		<	ProtoID
				t_tTypeName
		>
	ConfigData const constexpr inline
	&	Config_Of
	=	BuiltConfig_Of
		<	t_tTypeName
		,	ConfigBuilder
		>
	;
}
