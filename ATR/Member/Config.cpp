export module ATR.Member.Config;

import ATR.Member.ConfigBuilder;
import ATR.Member.ConfigData;
import ATR.Member.Finalize;

import Meta.ID.Alias;
import Meta.ID.StringLiteral;

using ::Meta::ID_V;
using ::Meta::StringLiteral;

export namespace
	ATR::Member
{
	template
		<	StringLiteral
				t_vTypeName
		,	typename
				t_tConfigBuilder
		>
	ConfigBuilder constexpr inline
		BuiltConfig_Of
	=	[]{
			t_tConfigBuilder
				vConfigBuilder
			{};

			Configure
			(	ID_V<t_vTypeName>
			,	vConfigBuilder
			);

			return
				vConfigBuilder
			;
		}()
	;

	template
		<	StringLiteral
				t_vTypeName
		,	typename
				t_tConfigBuilder
		>
	ConfigData constexpr inline
		FinalizedConfig_Of
	=	Finalize
		(	BuiltConfig_Of
			<	t_vTypeName
			,	t_tConfigBuilder
			>
		)
	;


	template
		<	StringLiteral
				t_vTypeName
		>
	ConfigData const constexpr inline
	&	Config_Of
	=	FinalizedConfig_Of
		<	t_vTypeName
		,	ConfigBuilder
		>
	;
}
