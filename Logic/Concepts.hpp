#pragma once

#include "TermTag.hpp"
#include <concepts>
#include <type_traits>

template
	<	typename
			t_tProto
	>
concept
	ProtoTerm
=	std::derived_from
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
and	std::derived_from
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
and	std::derived_from
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
and	std::derived_from
	<	t_tProto
	,	ConstantTag
	>
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
