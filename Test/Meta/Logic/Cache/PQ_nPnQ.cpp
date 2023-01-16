export module Test.Meta.Logic.Cache.PQ_nPnQ;

export import Test.Meta.Logic.Cache.PQ;
import Meta.Logic.Disjunction;

export
{
	DeduceTerm
	<	PQ or nPnQ
	>	const extern
		PQ_nPnQ
	;
	DeduceTerm
	<	PnQ or nPQ
	>	const extern
		PnQ_nPQ
	;

	DeduceTerm
	<	PR or nPnR
	>	const extern
		PR_nPnR
	;

	DeduceTerm
	<	PnR or nPR
	>	const extern
		PnR_nPR
	;
}
