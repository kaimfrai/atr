export module ATR:Layout.Type;

import :DataMember;
import :ID;
import :Layout.Create;

export namespace
	ATR
{
	/// the type mapped to the string literal by Member
	template
		<	ProtoID
				t_tTypeID
		>
	using
		CreateLayoutType
	=	decltype
		(	::CreateLayout
			(	LayoutConfig
				<	t_tTypeID
				::	RawArray
				>
			)
		)
	;
}
