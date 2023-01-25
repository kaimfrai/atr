export module Meta.Predicate.Stateless;

import Meta.Predicate.Regular;
import Meta.Predicate.Empty;
import Meta.Logic.Constraint;
import Meta.Logic.Conjunction;
import Meta.Logic.Term;

using ::Meta::Logic::DeduceTerm;

export namespace
	Meta
{
	///	Types that do not have a state and can be freely created, copied, and moved.
	DeduceTerm
	<	IsEmpty
	and	IsConstructible_From<>
	and	IsCopyConstructible
	>	const extern
		IsStateless
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoStateless
	=	ProtoConstraint
		<	t_tProto
		,	IsStateless
		>
	;
}
