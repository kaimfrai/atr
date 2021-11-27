#pragma once

#include "TermTag.hpp"

template
	<	typename
			t_tProto
	>
concept
	ProtoTerm
=	Meta::ProtoPredicate
	<	t_tProto
	,	Meta::DerivedFrom<TermTag>{}
	>
;

template
	<	typename
			t_tProto
	>
concept
	ProtoClause
=	ProtoTerm
	<	t_tProto
	>
and	Meta::ProtoPredicate
	<	t_tProto
	,	Meta::DerivedFrom<ClauseTag>{}
	>
;

template
	<	typename
			t_tProto
	>
concept
	ProtoLiteral
=	ProtoClause
	<	t_tProto
	>
and	Meta::ProtoPredicate
	<	t_tProto
	,	Meta::DerivedFrom<LiteralTag>{}
	>
;

template
	<	typename
			t_tProto
	>
concept
	ProtoConstant
=	ProtoLiteral
	<	t_tProto
	>
and	Meta::ProtoPredicate
	<	t_tProto
	,	Meta::DerivedFrom<ConstantTag>{}
	>
;

template
	<	typename
			t_tProto
	>
concept
	ProtoAtom
=	Meta::ProtoPredicate
	<	t_tProto
	,	Meta::Class{}
	>
and	not
	ProtoTerm
	<	t_tProto
	>
;
