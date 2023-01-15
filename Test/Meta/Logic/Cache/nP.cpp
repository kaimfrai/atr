export module Test.Meta.Logic.Cache.nP;

export import Test.Meta.Logic.Cache.P;

export
{
	DeduceTerm
	<	not
		P
	>	const extern
		nP
	;

	DeduceTerm
	<	not
		Q
	>	const extern
		nQ
	;

	DeduceTerm
	<	not
		R
	>	const extern
		nR
	;
}
