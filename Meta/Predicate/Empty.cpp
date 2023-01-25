export module Meta.Predicate.Empty;

import Meta.Predicate.Category;
import Meta.Trait.Empty;
import Meta.Logic.Constraint;
import Meta.Logic.Conjunction;
import Meta.Logic.Term;

using ::Meta::Logic::DeduceTerm;
using ::Meta::Logic::Literal;

export namespace
	Meta
{
	DeduceTerm
	<	Literal<Trait::Empty>
	and	IsCustom
	>	const extern
		IsEmpty
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoEmpty
	=	ProtoConstraint
		<	t_tProto
		,	IsEmpty
		>
	;
}
