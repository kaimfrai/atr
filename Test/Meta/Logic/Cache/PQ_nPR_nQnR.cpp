export module Test.Meta.Logic.Cache.PQ_nPR_nQnR;

export import Test.Meta.Logic.Cache.PQ;
export import Test.Meta.Logic.Cache.PQ_nPR;

import Meta.Logic.Term;
import Meta.Logic.Disjunction;

using ::Meta::Logic::DeduceTerm;

export
{
	DeduceTerm
	<	PQ_nPR or nQnR
	>	const extern
		PQ_nPR_nQnR
	;
	DeduceTerm
	<	PQ_nPnR or nQR
	>	const extern
		PQ_nPnR_nQR
	;

	DeduceTerm
	<	PnQ_nPR or QnR
	>	const extern
		PnQ_nPR_QnR
	;

	DeduceTerm
	<	PR_nPnQ or QnR
	>	const extern
		PR_nPnQ_QnR
	;
	DeduceTerm
	<	PnR_nPnQ or QR
	>	const extern
		PnR_nPnQ_QR
	;
}
