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
	,	::ATR::ProtoID
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
