export module ATR.Layout.Type;

import ATR.Member.DynamicTypes;
import ATR.Layout.Create;

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
		(	CreateLayout
			<	Member::DynamicTypes_Of
				<	t_vTypeName
				>
			>()
		)
	;
}
