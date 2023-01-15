export module Test.Meta.Logic.Cache.PQ_or_PR_or_QR;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQ_or_PR;

export
{
	DeduceTerm
	<	PQ_or_PR or QR
	>	const extern
		PQ_or_PR_or_QR
	;
	DeduceTerm
	<	PQ_or_PnR or QnR
	>	const extern
		PQ_or_PnR_or_QnR
	;

	DeduceTerm
	<	PnQ_or_PR or nQR
	>	const extern
		PnQ_or_PR_or_nQR
	;

	DeduceTerm
	<	nPnQ_or_nPnR or nQnR
	>	const extern
		nPnQ_or_nPnR_or_nQnR
	;

}
