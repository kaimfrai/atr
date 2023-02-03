export module ATR.Layout.Member;

import ATR.Member.Info;
import ATR.Member.SortKey;

import Meta.Token.Type;
import Meta.Trait.BitSize;
import Meta.Trait.BitAlign;
import Meta.ID.Concept;
import Meta.ID.Alias;
import Meta.Size;

using ::ATR::Member::Info;
using ::ATR::Member::AlignSortKey;
using ::Meta::ID_Of;

using ::Meta::RestoreTypeEntity;
using ::Meta::USize;

export template
	<	typename
			t_tData
	,	Meta::ProtoID
	>
struct
	Member final
{
	static USize constexpr
		SortKey
	=	AlignSortKey
		<	t_tData
		>
	;

	static auto constexpr
		BitSize
	=	::Meta::BitSize_Of
		(	::Meta::Type<t_tData>
		)
	;

	static auto constexpr
		BitAlign
	=	::Meta::BitAlign_Of
		(	::Meta::Type<t_tData>
		)
	;
};

export template
	<	Info
			t_vMember
	>
using
	DeduceMember
=	Member
	<	RestoreTypeEntity
		<	t_vMember.Type
		>
	,	ID_Of
		<	t_vMember.Name
		>
	>
;
