export module ATR.Layout.Type;

import ATR.Member.Definition;
import ATR.Layout.Create;

import Meta.ID.Concept;

using ::Meta::ProtoID;
using ::ATR::Member::Definition_For;

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
			(	Definition_For
				<	t_tTypeID
				::	RawArray
				>
			)
		)
	;
}
