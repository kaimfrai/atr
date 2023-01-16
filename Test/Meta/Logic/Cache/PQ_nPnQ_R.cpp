export module Test.Meta.Logic.Cache.PQ_nPnQ_R;

export import Test.Meta.Logic.Cache.P;
export import Test.Meta.Logic.Cache.nP;
export import Test.Meta.Logic.Cache.PQ;
export import Test.Meta.Logic.Cache.PQ_R;
export import Test.Meta.Logic.Cache.PQ_nPnQ;

import Meta.Logic.Term;
import Meta.Logic.Disjunction;

using ::Meta::Logic::DeduceTerm;

export
{
	DeduceTerm
	<	PQ_nPnQ or R
	>	const extern
		PQ_nPnQ_R
	;
	DeduceTerm
	<	PQ_nPnQ or nR
	>	const extern
		PQ_nPnQ_nR
	;

	DeduceTerm
	<	PnQ_nPQ or R
	>	const extern
		PnQ_nPQ_R
	;

	DeduceTerm
	<	PR_nPnR or Q
	>	const extern
		PR_nPnR_Q
	;
	DeduceTerm
	<	PR_nPnR or nQ
	>	const extern
		PR_nPnR_nQ
	;

	DeduceTerm
	<	PnR_nPR or Q
	>	const extern
		PnR_nPR_Q
	;

	DeduceTerm
	<	P_QR or nQnR
	>	const extern
		P_QR_nQnR
	;
	DeduceTerm
	<	P_QnR or nQR
	>	const extern
		P_QnR_nQR
	;

	DeduceTerm
	<	nP_QR or nQnR
	>	const extern
		nP_QR_nQnR
	;
	DeduceTerm
	<	nP_QnR or nQR
	>	const extern
		nP_QnR_nQR
	;
}
