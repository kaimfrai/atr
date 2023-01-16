export module Test.Meta.Logic.Cache.P;

import Meta.Logic.Term;

using ::Meta::Logic::DeduceLiteral;

export
{
	struct
		p
	{};
	DeduceLiteral
	<	p
	>	const extern
		P
	;

	struct
		q
	{};
	DeduceLiteral
	<	q
	>	const extern
		Q
	;

	struct
		r
	{};
	DeduceLiteral
	<	r
	>	const extern
		R
	;
}
