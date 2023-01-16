export module Test.Meta.Logic.Cache.PQ_PR_QR;

export import Test.Meta.Logic.Cache.PQ;
export import Test.Meta.Logic.Cache.PQ_PR;
import Meta.Logic.Disjunction;

export
{
	DeduceTerm
	<	PQ_PR or QR
	>	const extern
		PQ_PR_QR
	;
	DeduceTerm
	<	PQ_PnR or QnR
	>	const extern
		PQ_PnR_QnR
	;

	DeduceTerm
	<	PnQ_PR or nQR
	>	const extern
		PnQ_PR_nQR
	;

	DeduceTerm
	<	nPnQ_nPnR or nQnR
	>	const extern
		nPnQ_nPnR_nQnR
	;
}
