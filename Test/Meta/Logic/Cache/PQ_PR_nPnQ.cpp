export module Test.Meta.Logic.Cache.PQ_PR_nPnQ;

export import Test.Meta.Logic.Cache.PQ;
export import Test.Meta.Logic.Cache.PQ_PR;
export import Test.Meta.Logic.Cache.PQ_nPnQ;
export import Test.Meta.Logic.Cache.PQ_nPR;
import Meta.Logic.ErasedTerm.Disjunction;

export
{
	DeduceTerm
	<	PQ_PR or nPnQ
	>	const extern
		PQ_PR_nPnQ
	;
	DeduceTerm
	<	PQ_PR or nPnR
	>	const extern
		PQ_PR_nPnR
	;

	DeduceTerm
	<	PQ_PnR or nPnQ
	>	const extern
		PQ_PnR_nPnQ
	;
	DeduceTerm
	<	PQ_PnR or nPR
	>	const extern
		PQ_PnR_nPR
	;

	DeduceTerm
	<	PQ_nPnQ or nPR
	>	const extern
		PQ_nPnQ_nPR
	;
	DeduceTerm
	<	PQ_nPnQ or QR
	>	const extern
		PQ_nPnQ_QR
	;
	DeduceTerm
	<	PQ_nPnQ or QnR
	>	const extern
		PQ_nPnQ_QnR
	;
	DeduceTerm
	<	PQ_nPnQ or nQR
	>	const extern
		PQ_nPnQ_nQR
	;
	DeduceTerm
	<	PQ_nPnQ or nQnR
	>	const extern
		PQ_nPnQ_nQnR
	;
	DeduceTerm
	<	PQ_nPnQ or nPnR
	>	const extern
		PQ_nPnQ_nPnR
	;

	DeduceTerm
	<	PnQ_PnR or nPQ
	>	const extern
		PnQ_PnR_nPQ
	;

	DeduceTerm
	<	PR_nPnQ or nPnR
	>	const extern
		PR_nPnQ_nPnR
	;
}
