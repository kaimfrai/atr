export module ATR.Member.Config;

import ATR.Member.ConfigBuilder;
import ATR.Member.ConfigData;
import ATR.Member.Finalize;

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
		Config_Of
	=	Finalize
		(	BuiltConfig_Of
			<	t_tTypeName
			,	ConfigBuilder
			>
		)
	;
}
