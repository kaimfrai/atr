export module Test.Meta.Logic.Cache.PQR_or_nPnQ_or_nPnR_or_nQnR;

export import Test.Meta.Logic.Cache.PQ;
export import Test.Meta.Logic.Cache.PQR_or_nPnQ_or_nPnR;

export
{
	DeduceTerm
	<	PQR_or_nPnQ_or_nPnR or nQnR
	>	const extern
		PQR_or_nPnQ_or_nPnR_or_nQnR
	;

	DeduceTerm
	<	PQnR_or_nPnQ_or_nPR or nQR
	>	const extern
		PQnR_or_nPnQ_or_nPR_or_nQR
	;

	DeduceTerm
	<	PQ_or_PR_or_nPnQnR or QR
	>	const extern
		PQ_or_PR_or_nPnQnR_or_QR
	;
	DeduceTerm
	<	PQ_or_PnR_or_nPnQR or QnR
	>	const extern
		PQ_or_PnR_or_nPnQR_or_QnR
	;

	DeduceTerm
	<	PnQnR_or_nPQ_or_nPR or QR
	>	const extern
		PnQnR_or_nPQ_or_nPR_or_QR
	;

	DeduceTerm
	<	PnQ_or_PR_or_nPQnR or nQR
	>	const extern
		PnQ_or_PR_or_nPQnR_or_nQR
	;
}
