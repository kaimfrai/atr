export module Test.Meta.Logic.Cache.P;

import Meta.Logic;

export
{
	using ::Meta::DeduceTerm;

	struct
		p
	{};
	DeduceTerm
	<	::Meta::ErasedLiteral
		<	p
		>
	>	const extern
		P
	;

	struct
		q
	{};
	DeduceTerm
	<	::Meta::ErasedLiteral
		<	q
		>
	>	const extern
		Q
	;

	struct
		r
	{};
	DeduceTerm
	<	::Meta::ErasedLiteral
		<	r
		>
	>	const extern
		R
	;
}
