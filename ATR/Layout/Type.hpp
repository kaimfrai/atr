export module ATR:Layout.Type;

import :DataMember;
import :Layout.Create;

import Meta.ID;

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
