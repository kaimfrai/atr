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
	ProtoClause
=	ProtoTerm
	<	t_tProto
	>
and	(	t_tProto
	::	Term
	.	IsClause
	)
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
and	(	t_tProto
	::	Term
	.	IsLiteral
	)
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
and	not
	ProtoTerm
	<	t_tProto
	>
;
