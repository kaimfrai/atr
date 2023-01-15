export module Test.Meta.Logic.Cache.PQ_or_nPR;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.PQ;

export
{
	DeduceTerm
	<	PQ or nPR
	>	const extern
		PQ_or_nPR
	;
	DeduceTerm
	<	PQ or nPnR
	>	const extern
		PQ_or_nPnR
	;

	DeduceTerm
	<	PQ or nQR
	>	const extern
		PQ_or_nQR
	;
	DeduceTerm
	<	PQ or nQnR
	>	const extern
		PQ_or_nQnR
	;

	DeduceTerm
	<	PnR or nPQ
	>	const extern
		PnR_or_nPQ
	;
	DeduceTerm
	<	PnR or nPnQ
	>	const extern
		PnR_or_nPnQ
	;

	DeduceTerm
	<	PnQ or nPR
	>	const extern
		PnQ_or_nPR
	;
	DeduceTerm
	<	PnQ or nPnR
	>	const extern
		PnQ_or_nPnR
	;

	DeduceTerm
	<	PR or nPQ
	>	const extern
		PR_or_nPQ
	;
	DeduceTerm
	<	PR or nPnQ
	>	const extern
		PR_or_nPnQ
	;

	DeduceTerm
	<	PR or QnR
	>	const extern
		PR_or_QnR
	;
	DeduceTerm
	<	PR or nQnR
	>	const extern
		PR_or_nQnR
	;

	DeduceTerm
	<	nPnQ or QR
	>	const extern
		nPnQ_or_QR
	;

	DeduceTerm
	<	nPnR or QR
	>	const extern
		nPnR_or_QR
	;
}
