export module Test.Meta.Logic.Cache.PQ_PR;

export import Test.Meta.Logic.Cache.PQ;

export
{
	DeduceTerm
	<	PQ or PR
	>	const extern
		PQ_PR
	;
	DeduceTerm
	<	PQ or PnR
	>	const extern
		PQ_PnR
	;

	DeduceTerm
	<	PQ or QR
	>	const extern
		PQ_QR
	;
	DeduceTerm
	<	PQ or QnR
	>	const extern
		PQ_QnR
	;

	DeduceTerm
	<	PnQ or PR
	>	const extern
		PnQ_PR
	;
	DeduceTerm
	<	PnQ or PnR
	>	const extern
		PnQ_PnR
	;
	DeduceTerm
	<	PnQ or nQR
	>	const extern
		PnQ_nQR
	;

	DeduceTerm
	<	PR or QR
	>	const extern
		PR_QR
	;
	DeduceTerm
	<	PR or nQR
	>	const extern
		PR_nQR
	;

	DeduceTerm
	<	PnR or QnR
	>	const extern
		PnR_QnR
	;
	DeduceTerm
	<	PnR or nQnR
	>	const extern
		PnR_nQnR
	;

	DeduceTerm
	<	nPQ or nPR
	>	const extern
		nPQ_nPR
	;

	DeduceTerm
	<	nPQ or QR
	>	const extern
		nPQ_QR
	;

	DeduceTerm
	<	nPnQ or nPR
	>	const extern
		nPnQ_nPR
	;
	DeduceTerm
	<	nPnQ or nPnR
	>	const extern
		nPnQ_nPnR
	;
	DeduceTerm
	<	nPnQ or nQR
	>	const extern
		nPnQ_nQR
	;
	DeduceTerm
	<	nPnQ or nQnR
	>	const extern
		nPnQ_nQnR
	;

	DeduceTerm
	<	nPR or QR
	>	const extern
		nPR_QR
	;

	DeduceTerm
	<	nPnR or nQnR
	>	const extern
		nPnR_nQnR
	;
}
