export module Test.Meta.Logic.Cache.PQR_nPnQ;

export import Test.Meta.Logic.Cache.PQ;
export import Test.Meta.Logic.Cache.PQR;
import Meta.Logic.Disjunction;

export
{
	DeduceTerm
	<	PQR or nPnQ
	>	const extern
		PQR_nPnQ
	;
	DeduceTerm
	<	PQR or nPnR
	>	const extern
		PQR_nPnR
	;
	DeduceTerm
	<	PQR or nQnR
	>	const extern
		PQR_nQnR
	;

	DeduceTerm
	<	PQnR or nPnQ
	>	const extern
		PQnR_nPnQ
	;

	DeduceTerm
	<	PQ or nPnQR
	>	const extern
		PQ_nPnQR
	;
	DeduceTerm
	<	PQ or nPnQnR
	>	const extern
		PQ_nPnQnR
	;

	DeduceTerm
	<	PnQnR or nPQ
	>	const extern
		PnQnR_nPQ
	;
	DeduceTerm
	<	PnQnR or nPR
	>	const extern
		PnQnR_nPR
	;
	DeduceTerm
	<	PnQnR or QR
	>	const extern
		PnQnR_QR
	;

	DeduceTerm
	<	PR or nPnQnR
	>	const extern
		PR_nPnQnR
	;

	DeduceTerm
	<	nPnQnR or QR
	>	const extern
		nPnQnR_QR
	;
}
