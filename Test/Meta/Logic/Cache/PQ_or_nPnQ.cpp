export module Test.Meta.Logic.Cache.PQ_or_nPnQ;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.PQ;

export
{
	DeduceTerm
	<	PQ or nPnQ
	>	const extern
		PQ_or_nPnQ
	;
	DeduceTerm
	<	PnQ or nPQ
	>	const extern
		PnQ_or_nPQ
	;

	DeduceTerm
	<	PR or nPnR
	>	const extern
		PR_or_nPnR
	;

	DeduceTerm
	<	PnR or nPR
	>	const extern
		PnR_or_nPR
	;
}
