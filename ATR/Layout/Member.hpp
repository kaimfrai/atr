export module ATR:Layout.Member;

import :DataMember;
import :ID;
import :Layout.LayoutFwd;

import Meta.Arithmetic;
import Meta.Token;

using ::ATR::MemberInfo;
using ::ATR::MemberSortKey;
using ::ATR::ID;
using ::ATR::ID_Of;

using ::Meta::RestoreTypeEntity;
using ::Meta::USize;

export template
	<	typename
			t_tData
	,	char const
		&
		...
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
};

template
	<	typename
			t_tData
	,	char const
		&
		...	t_rpName
	>
auto constexpr
(	MakeMember
)	(	ID<t_rpName...>
	)
->	Member
	<	t_tData
	,	t_rpName
		...
	>
;

template
	<	MemberInfo
			t_vMember
	>
using
	DeduceMember
=	decltype
	(	MakeMember
		<	RestoreTypeEntity
			<	t_vMember.Type
			>
		>(	ID_Of
			<	t_vMember.Name
			>{}
		)
	)
;
