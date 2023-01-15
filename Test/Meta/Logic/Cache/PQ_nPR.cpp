export module Test.Meta.Logic.Cache.PQ_nPR;

export import Test.Meta.Logic.Cache.PQ;
import Meta.Logic.ErasedTerm.Disjunction;

export
{
	DeduceTerm
	<	PQ or nPR
	>	const extern
		PQ_nPR
	;
	DeduceTerm
	<	PQ or nPnR
	>	const extern
		PQ_nPnR
	;

	DeduceTerm
	<	PQ or nQR
	>	const extern
		PQ_nQR
	;
	DeduceTerm
	<	PQ or nQnR
	>	const extern
		PQ_nQnR
	;

	DeduceTerm
	<	PnR or nPnQ
	>	const extern
		PnR_nPnQ
	;

	DeduceTerm
	<	PnQ or nPR
	>	const extern
		PnQ_nPR
	;
	DeduceTerm
	<	PnQ or nPnR
	>	const extern
		PnQ_nPnR
	;

	DeduceTerm
	<	PR or nPnQ
	>	const extern
		PR_nPnQ
	;

	DeduceTerm
	<	PR or QnR
	>	const extern
		PR_QnR
	;
	DeduceTerm
	<	PR or nQnR
	>	const extern
		PR_nQnR
	;

	DeduceTerm
	<	nPnQ or QR
	>	const extern
		nPnQ_QR
	;

	DeduceTerm
	<	nPnR or QR
	>	const extern
		nPnR_QR
	;
}
