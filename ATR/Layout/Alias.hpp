export module ATR:Layout.Alias;

import :DataMember;
import :ID;

using ::ATR::ID;
using ::ATR::ID_Of;
using ::ATR::MemberInfo;
using ::Meta::RestoreTypeEntity;

export template
	<	typename
			t_tTarget
	,	char const
		&
		...	t_rpAlias
	>
struct
	Alias
{};

template
	<	typename
			t_tTarget
	,	char const
		&
		...	t_rpAlias
	>
auto constexpr
(	MakeAlias
)	(	ID<t_rpAlias...>
	)
->	Alias
	<	t_tTarget
	,	t_rpAlias
		...
	>
;

template
	<	MemberInfo
			t_vMember
	>
using
	DeduceAlias
=	decltype
	(	MakeAlias
		<	RestoreTypeEntity
			<	t_vMember.Type
			>
		>(	ID_Of
			<	t_vMember.Name
			>{}
		)
	)
;
