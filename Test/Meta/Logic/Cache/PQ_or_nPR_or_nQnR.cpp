export module Test.Meta.Logic.Cache.PQ_or_nPR_or_nQnR;

export import Test.Meta.Logic.Cache.PQ;
export import Test.Meta.Logic.Cache.PQ_or_nPR;

export
{
	DeduceTerm
	<	PQ_or_nPR or nQnR
	>	const extern
		PQ_or_nPR_or_nQnR
	;
	DeduceTerm
	<	PQ_or_nPnR or nQR
	>	const extern
		PQ_or_nPnR_or_nQR
	;

	DeduceTerm
	<	PnQ_or_nPR or QnR
	>	const extern
		PnQ_or_nPR_or_QnR
	;

	DeduceTerm
	<	PR_or_nPnQ or QnR
	>	const extern
		PR_or_nPnQ_or_QnR
	;
	DeduceTerm
	<	PnR_or_nPnQ or QR
	>	const extern
		PnR_or_nPnQ_or_QR
	;
}
