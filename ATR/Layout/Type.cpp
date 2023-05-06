export module ATR.Layout.Type;

import ATR.Layout.Create;

export namespace
	ATR
{
	/// the type mapped to the string literal by Member
	template
		<	typename
				t_tTypeName
		>
	using
		CreateLayoutType
	=	decltype
		(	Layout::CreateLayout
			(	t_tTypeName
				{}
			)
		)
	;
}
