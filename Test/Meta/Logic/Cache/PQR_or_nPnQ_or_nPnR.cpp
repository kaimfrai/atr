export module Test.Meta.Logic.Cache.PQR_nPnQ_nPnR;

export import Test.Meta.Logic.Cache.PQ;
export import Test.Meta.Logic.Cache.PQR;
export import Test.Meta.Logic.Cache.PQ_PR;
export import Test.Meta.Logic.Cache.PQR_nPnQ;

export
{
	DeduceTerm
	<	PQR_nPnQ or nPnR
	>	const extern
		PQR_nPnQ_nPnR
	;
	DeduceTerm
	<	PQnR_nPnQ or nPR
	>	const extern
		PQnR_nPnQ_nPR
	;
	DeduceTerm
	<	PQR_nPnQ or nQnR
	>	const extern
		PQR_nPnQ_nQnR
	;
	DeduceTerm
	<	PQR_nPnR or nQnR
	>	const extern
		PQR_nPnR_nQnR
	;

	DeduceTerm
	<	PQ_PR or nPnQnR
	>	const extern
		PQ_PR_nPnQnR
	;
	DeduceTerm
	<	PQ_PnR or nPnQR
	>	const extern
		PQ_PnR_nPnQR
	;

	DeduceTerm
	<	PnQnR_nPQ or nPR
	>	const extern
		PnQnR_nPQ_nPR
	;
	DeduceTerm
	<	PnQnR_nPQ or QR
	>	const extern
		PnQnR_nPQ_QR
	;
	DeduceTerm
	<	PnQnR_nPR or QR
	>	const extern
		PnQnR_nPR_QR
	;

	DeduceTerm
	<	PnQ_PR or nPQnR
	>	const extern
		PnQ_PR_nPQnR
	;
	DeduceTerm
	<	PnQ_PnR or nPQR
	>	const extern
		PnQ_PnR_nPQR
	;
}
