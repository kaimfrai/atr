export module Test.Meta.Logic.Cache.PQ_or_nPnQ_or_R;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQ_or_R;
import Test.Meta.Logic.Cache.PQ_or_nPnQ;

export
{
	DeduceTerm
	<	PQ_or_nPnQ or R
	>	const extern
		PQ_or_nPnQ_or_R
	;
	DeduceTerm
	<	PQ_or_nPnQ or nR
	>	const extern
		PQ_or_nPnQ_or_nR
	;

	DeduceTerm
	<	PnQ_or_nPQ or R
	>	const extern
		PnQ_or_nPQ_or_R
	;

	DeduceTerm
	<	PR_or_nPnR or Q
	>	const extern
		PR_or_nPnR_or_Q
	;
	DeduceTerm
	<	PR_or_nPnR or nQ
	>	const extern
		PR_or_nPnR_or_nQ
	;

	DeduceTerm
	<	PnR_or_nPR or Q
	>	const extern
		PnR_or_nPR_or_Q
	;

	DeduceTerm
	<	P_or_QR or nQnR
	>	const extern
		P_or_QR_or_nQnR
	;
	DeduceTerm
	<	P_or_QnR or nQR
	>	const extern
		P_or_QnR_or_nQR
	;

	DeduceTerm
	<	nP_or_QR or nQnR
	>	const extern
		nP_or_QR_or_nQnR
	;
	DeduceTerm
	<	nP_or_QnR or nQR
	>	const extern
		nP_or_QnR_or_nQR
	;
}
