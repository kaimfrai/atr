export module ATR:Layout.Member;

import :DataMember;
import :ID;

import Meta.Arithmetic;
import Meta.Token;

using ::ATR::MemberInfo;
using ::ATR::MemberSortKey;
using ::ATR::ID_Of;

using ::Meta::RestoreTypeEntity;
using ::Meta::USize;

export template
	<	typename
			t_tData
	,	ATR::ProtoID
	>
struct
	Member final
{
	static USize constexpr
		SortKey
	=	MemberSortKey
		<	t_tData
		>
	;

	static USize constexpr
		BitSize
	=	::Meta::BitSize
		(	::Meta::Type<t_tData>
		)
	;

	static USize constexpr
		BitAlign
	=	::Meta::BitAlign
		(	::Meta::Type<t_tData>
		)
	;
};

template
	<	MemberInfo
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
