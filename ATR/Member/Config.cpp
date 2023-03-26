export module ATR.Member.Config;

import ATR.Member.ConfigData;
import ATR.Member.ConfigBuilder;
import ATR.Member.Finalize;

import Meta.ID.StringLiteral;
import Meta.ID.Alias;

using ::Meta::StringLiteral;
using ::Meta::ID_V;

export namespace
	ATR::Member
{
	template
		<	StringLiteral
				t_vTypeName
		>
	ConfigData constexpr inline
		Config_Of
	=	[]{
			ConfigData
				vConfig
			{};

			ConfigBuilder
				vConfigBuilder
			{	vConfig
			};

			Configure
			(	ID_V<t_vTypeName>
			,	vConfigBuilder
			);

			Finalize
			(	vConfigBuilder
				.	GetMemberNameView
					()
			,	vConfigBuilder
				.	GetAliasView
					()
			,	vConfigBuilder
				.	GetTypeView
					()
			);

			return
				vConfig
			;
		}()
	;
}
