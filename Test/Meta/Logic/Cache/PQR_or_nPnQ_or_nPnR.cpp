export module Test.Meta.Logic.Cache.PQR_or_nPnQ_or_nPnR;

export import Test.Meta.Logic.Cache.PQ;
export import Test.Meta.Logic.Cache.PQR;
export import Test.Meta.Logic.Cache.PQ_or_PR;
export import Test.Meta.Logic.Cache.PQR_or_nPnQ;

export
{
	DeduceTerm
	<	PQR_or_nPnQ or nPnR
	>	const extern
		PQR_or_nPnQ_or_nPnR
	;
	DeduceTerm
	<	PQnR_or_nPnQ or nPR
	>	const extern
		PQnR_or_nPnQ_or_nPR
	;
	DeduceTerm
	<	PQR_or_nPnQ or nQnR
	>	const extern
		PQR_or_nPnQ_or_nQnR
	;
	DeduceTerm
	<	PQR_or_nPnR or nQnR
	>	const extern
		PQR_or_nPnR_or_nQnR
	;

	DeduceTerm
	<	PQ_or_PR or nPnQnR
	>	const extern
		PQ_or_PR_or_nPnQnR
	;
	DeduceTerm
	<	PQ_or_PnR or nPnQR
	>	const extern
		PQ_or_PnR_or_nPnQR
	;

	DeduceTerm
	<	PnQnR_or_nPQ or nPR
	>	const extern
		PnQnR_or_nPQ_or_nPR
	;
	DeduceTerm
	<	PnQnR_or_nPQ or QR
	>	const extern
		PnQnR_or_nPQ_or_QR
	;
	DeduceTerm
	<	PnQnR_or_nPR or QR
	>	const extern
		PnQnR_or_nPR_or_QR
	;

	DeduceTerm
	<	PnQ_or_PR or nPQnR
	>	const extern
		PnQ_or_PR_or_nPQnR
	;
	DeduceTerm
	<	PnQ_or_PnR or nPQR
	>	const extern
		PnQ_or_PnR_or_nPQR
	;
}
