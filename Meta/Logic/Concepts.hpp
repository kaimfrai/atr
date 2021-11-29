#pragma once

#include "TermTag.hpp"

template
	<	typename
			t_tProto
	>
concept
	ProtoTerm
=	Meta::ProtoDerivedFrom
	<	t_tProto
	,	TermTag
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
and	Meta::ProtoDerivedFrom
	<	t_tProto
	,	ClauseTag
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
and	Meta::ProtoDerivedFrom
	<	t_tProto
	,	LiteralTag
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
and	Meta::ProtoDerivedFrom
	<	t_tProto
	,	ConstantTag
	>
;

template
	<	typename
			t_tProto
	>
concept
	ProtoAtom
=	Meta::ProtoClass
	<	t_tProto
	>
and	not
	ProtoTerm
	<	t_tProto
	>
;
