export module ATR.Layout.Type;

import ATR.Layout.Create;
import ATR.Member.Config;

import Meta.ID.StringLiteral;

using ::Meta::StringLiteral;

export namespace
	ATR
{
	/// the type mapped to the string literal by Member
	template
		<	StringLiteral
				t_vTypeName
		>
	using
		CreateLayoutType
	=	decltype
		(	Layout::CreateLayout
			<	Member::Config_Of
				<	t_vTypeName
				>
			.	Layout
			>()
		)
	;
}
