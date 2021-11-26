#pragma once

#include "TermTag.hpp"
#include <type_traits>

template
	<	typename
			t_tProto
	>
concept
	ProtoTerm
=	std::is_base_of_v
	<	TermTag
	,	t_tProto
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
and	std::is_base_of_v
	<	ClauseTag
	,	t_tProto
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
and	std::is_base_of_v
	<	LiteralTag
	,	t_tProto
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
and	std::is_base_of_v
	<	ConstantTag
	,	t_tProto
	>
;

template
	<	typename
			t_tProto
	>
concept
	ProtoAtom
=	std::is_class_v
	<	t_tProto
	>
and	(	//	may be incomplete class context
		not
		requires
		{	sizeof(t_tProto);
		}
	or	not
		std::is_base_of_v
		<	TermTag
		,	t_tProto
		>
	)
;
