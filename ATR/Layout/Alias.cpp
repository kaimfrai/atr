export module ATR.Layout.Alias;

import ATR.DataMember;

import Meta.ID.Concept;
import Meta.ID.Alias;
import Meta.Token.Type;

using ::Meta::ID_Of;
using ::ATR::MemberInfo;
using ::Meta::RestoreTypeEntity;

export template
	<	::Meta::ProtoID
			t_tTarget
	,	::Meta::ProtoID
			t_tName
	>
struct
	Alias
{
	static auto constexpr
		Target
	=	t_tTarget
	::	StringView
	;

	static auto constexpr
		Name
	=	t_tName
	::	StringView
	;
};

export template
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
