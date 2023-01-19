export module ATR.Layout.Type;

import ATR.DataMember;
import ATR.Layout.Create;

import Meta.ID.Concept;

using ::Meta::ProtoID;

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
