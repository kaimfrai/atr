export module Test.Meta.Logic.Cache.PQR_nPnQ_nPnR_nQnR;

export import Test.Meta.Logic.Cache.PQ;
export import Test.Meta.Logic.Cache.PQR_nPnQ_nPnR;

export
{
	DeduceTerm
	<	PQR_nPnQ_nPnR or nQnR
	>	const extern
		PQR_nPnQ_nPnR_nQnR
	;

	DeduceTerm
	<	PQnR_nPnQ_nPR or nQR
	>	const extern
		PQnR_nPnQ_nPR_nQR
	;

	DeduceTerm
	<	PQ_PR_nPnQnR or QR
	>	const extern
		PQ_PR_nPnQnR_QR
	;
	DeduceTerm
	<	PQ_PnR_nPnQR or QnR
	>	const extern
		PQ_PnR_nPnQR_QnR
	;

	DeduceTerm
	<	PnQnR_nPQ_nPR or QR
	>	const extern
		PnQnR_nPQ_nPR_QR
	;

	DeduceTerm
	<	PnQ_PR_nPQnR or nQR
	>	const extern
		PnQ_PR_nPQnR_nQR
	;
}
