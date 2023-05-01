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
		>
	ConfigData constexpr inline
		Config_Of
	=	[]{
			ConfigBuilder
				vConfigBuilder
			{};

			Configure
			(	ID_V<t_vTypeName>
			,	vConfigBuilder
			);

			return
			Finalize
			(	vConfigBuilder
				.	NamedTypeView
					()
			,	vConfigBuilder
				.	AliasView
					()
			);
		}()
	;
}
