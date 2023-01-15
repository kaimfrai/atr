export module Test.Meta.Logic.Cache.PQ_or_R;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;

export
{
	DeduceTerm
	<	PQ or R
	>	const extern
		PQ_or_R
	;
	DeduceTerm
	<	PQ or nR
	>	const extern
		PQ_or_nR
	;
	DeduceTerm
	<	PnQ or R
	>	const extern
		PnQ_or_R
	;
	DeduceTerm
	<	PnQ or nR
	>	const extern
		PnQ_or_nR
	;

	DeduceTerm
	<	PR or Q
	>	const extern
		PR_or_Q
	;
	DeduceTerm
	<	PR or nQ
	>	const extern
		PR_or_nQ
	;
	DeduceTerm
	<	PnR or Q
	>	const extern
		PnR_or_Q
	;
	DeduceTerm
	<	PnR or nQ
	>	const extern
		PnR_or_nQ
	;

	DeduceTerm
	<	P or QR
	>	const extern
		P_or_QR
	;
	DeduceTerm
	<	P or QnR
	>	const extern
		P_or_QnR
	;
	DeduceTerm
	<	P or nQR
	>	const extern
		P_or_nQR
	;
	DeduceTerm
	<	P or nQnR
	>	const extern
		P_or_nQnR
	;

	DeduceTerm
	<	nPQ or R
	>	const extern
		nPQ_or_R
	;
	DeduceTerm
	<	nPQ or nR
	>	const extern
		nPQ_or_nR
	;
	DeduceTerm
	<	nPnQ or R
	>	const extern
		nPnQ_or_R
	;
	DeduceTerm
	<	nPnQ or nR
	>	const extern
		nPnQ_or_nR
	;

	DeduceTerm
	<	nPR or Q
	>	const extern
		nPR_or_Q
	;
	DeduceTerm
	<	nPR or nQ
	>	const extern
		nPR_or_nQ
	;
	DeduceTerm
	<	nPnR or Q
	>	const extern
		nPnR_or_Q
	;
	DeduceTerm
	<	nPnR or nQ
	>	const extern
		nPnR_or_nQ
	;

	DeduceTerm
	<	nP or QR
	>	const extern
		nP_or_QR
	;
	DeduceTerm
	<	nP or QnR
	>	const extern
		nP_or_QnR
	;
	DeduceTerm
	<	nP or nQR
	>	const extern
		nP_or_nQR
	;
	DeduceTerm
	<	nP or nQnR
	>	const extern
		nP_or_nQnR
	;
}
