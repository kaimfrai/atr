export module Test.Meta.Logic.Cache.P;

import Meta.Logic.Term;
import Meta.Logic.Erased.Term;

export
{
	using ::Meta::Logic::DeduceTerm;

	struct
		p
	{};
	DeduceTerm
	<	::Meta::Logic::Erased::Literal
		<	p
		>
	>	const extern
		P
	;

	struct
		q
	{};
	DeduceTerm
	<	::Meta::Logic::Erased::Literal
		<	q
		>
	>	const extern
		Q
	;

	struct
		r
	{};
	DeduceTerm
	<	::Meta::Logic::Erased::Literal
		<	r
		>
	>	const extern
		R
	;
}
