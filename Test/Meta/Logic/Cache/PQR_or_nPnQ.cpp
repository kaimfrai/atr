export module Test.Meta.Logic.Cache.PQR_or_nPnQ;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQR;

export
{
	DeduceTerm
	<	PQR or nPnQ
	>	const extern
		PQR_or_nPnQ
	;
	DeduceTerm
	<	PQR or nPnR
	>	const extern
		PQR_or_nPnR
	;
	DeduceTerm
	<	PQR or nQnR
	>	const extern
		PQR_or_nQnR
	;

	DeduceTerm
	<	PQnR or nPnQ
	>	const extern
		PQnR_or_nPnQ
	;

	DeduceTerm
	<	PQ or nPnQR
	>	const extern
		PQ_or_nPnQR
	;
	DeduceTerm
	<	PQ or nPnQnR
	>	const extern
		PQ_or_nPnQnR
	;

	DeduceTerm
	<	PnQnR or nPQ
	>	const extern
		PnQnR_or_nPQ
	;
	DeduceTerm
	<	PnQnR or nPR
	>	const extern
		PnQnR_or_nPR
	;
	DeduceTerm
	<	PnQnR or QR
	>	const extern
		PnQnR_or_QR
	;

	DeduceTerm
	<	PR or nPnQnR
	>	const extern
		PR_or_nPnQnR
	;

	DeduceTerm
	<	nPnQnR or QR
	>	const extern
		nPnQnR_or_QR
	;
}
