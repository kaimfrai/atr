export module ATR:Layout.Alias;

import :DataMember;

import Meta.ID;

using ::Meta::ID_Of;
using ::ATR::MemberInfo;
using ::Meta::RestoreTypeEntity;

export template
	<	typename
			t_tTarget
	,	::Meta::ProtoID
	>
struct
	Alias
{};

template
	<	MemberInfo
			t_vMember
	>
using
	DeduceAlias
=	Alias
	<	RestoreTypeEntity
		<	t_vMember.Type
		>
	,	ID_Of
		<	t_vMember.Name
		>
	>
;
