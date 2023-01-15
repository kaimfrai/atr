export module Test.Meta.Logic.Cache.PQ_or_PR_or_nPnQ;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQ_or_PR;
import Test.Meta.Logic.Cache.PQ_or_nPnQ;
import Test.Meta.Logic.Cache.PQ_or_nPR;

export
{
	DeduceTerm
	<	PQ_or_PR or nPnQ
	>	const extern
		PQ_or_PR_or_nPnQ
	;
	DeduceTerm
	<	PQ_or_PR or nPnR
	>	const extern
		PQ_or_PR_or_nPnR
	;

	DeduceTerm
	<	PQ_or_PnR or nPnQ
	>	const extern
		PQ_or_PnR_or_nPnQ
	;
	DeduceTerm
	<	PQ_or_PnR or nPR
	>	const extern
		PQ_or_PnR_or_nPR
	;

	DeduceTerm
	<	PQ_or_nPnQ or nPR
	>	const extern
		PQ_or_nPnQ_or_nPR
	;
	DeduceTerm
	<	PQ_or_nPnQ or QR
	>	const extern
		PQ_or_nPnQ_or_QR
	;
	DeduceTerm
	<	PQ_or_nPnQ or QnR
	>	const extern
		PQ_or_nPnQ_or_QnR
	;
	DeduceTerm
	<	PQ_or_nPnQ or nQR
	>	const extern
		PQ_or_nPnQ_or_nQR
	;
	DeduceTerm
	<	PQ_or_nPnQ or nQnR
	>	const extern
		PQ_or_nPnQ_or_nQnR
	;
	DeduceTerm
	<	PQ_or_nPnQ or nPnR
	>	const extern
		PQ_or_nPnQ_or_nPnR
	;

	DeduceTerm
	<	PnQ_or_PnR or nPQ
	>	const extern
		PnQ_or_PnR_or_nPQ
	;

	DeduceTerm
	<	PR_or_nPnQ or nPnR
	>	const extern
		PR_or_nPnQ_or_nPnR
	;
}
