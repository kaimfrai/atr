#pragma once

#include "TermTag.hpp"
#include <type_traits>

template
	<	typename
			t_tProto
	>
concept
	ProtoTerm
=	std::is_same_v
	<	decltype
		(	t_tProto
		::	Term
		)
	,	TermTag const
	>
;

template
	<	typename
			t_tProto
	>
concept
	ProtoConjunctive
=	ProtoTerm
	<	t_tProto
	>
and	(	t_tProto
	::	Term
	.	IsConjunctive
	)
;

template
	<	typename
			t_tProto
	>
concept
	ProtoConjunction
=	ProtoConjunctive
	<	t_tProto
	>
and	(	t_tProto
	::	Term
	.	IsConjunction
	)
;

template
	<	typename
			t_tProto
	>
concept
	ProtoDisjunctive
=	ProtoTerm
	<	t_tProto
	>
and	(	t_tProto
	::	Term
	.	IsDisjunctive
	)
;

template
	<	typename
			t_tProto
	>
concept
	ProtoDisjunction
=	ProtoDisjunctive
	<	t_tProto
	>
and	(	t_tProto
	::	Term
	.	IsDisjunction
	)
;

template
	<	typename
			t_tProto
	>
concept
	ProtoConjunctionClause
=	ProtoConjunction
	<	t_tProto
	>
and	ProtoDisjunctive
	<	t_tProto
	>
;

template
	<	typename
			t_tProto
	>
concept
	ProtoDisjunctionClause
=	ProtoDisjunction
	<	t_tProto
	>
and	ProtoConjunctive
	<	t_tProto
	>
;

template
	<	typename
			t_tProto
	>
concept
	ProtoLiteral
=	ProtoConjunctionClause
	<	t_tProto
	>
and	ProtoDisjunctionClause
	<	t_tProto
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
and	(	t_tProto
	::	Term
	.	IsConstant
	)
;

template
	<	typename
		//	may be incomplete class context
			t_tProto
	>
concept
	ProtoAtom
=	std::is_class_v
	<	t_tProto
	>
;
