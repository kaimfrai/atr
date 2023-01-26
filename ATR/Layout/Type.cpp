export module ATR.Layout.Type;

import ATR.LayoutConfig;
import ATR.Layout.Create;

import Meta.ID.Concept;

using ::Meta::ProtoID;
using ::ATR::LayoutConfig;

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
