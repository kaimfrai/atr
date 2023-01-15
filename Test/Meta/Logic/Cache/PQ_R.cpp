export module Test.Meta.Logic.Cache.PQ_R;

export import Test.Meta.Logic.Cache.P;
export import Test.Meta.Logic.Cache.nP;
export import Test.Meta.Logic.Cache.PQ;

export
{
	DeduceTerm
	<	PQ or R
	>	const extern
		PQ_R
	;
	DeduceTerm
	<	PQ or nR
	>	const extern
		PQ_nR
	;
	DeduceTerm
	<	PnQ or R
	>	const extern
		PnQ_R
	;

	DeduceTerm
	<	PR or Q
	>	const extern
		PR_Q
	;
	DeduceTerm
	<	PR or nQ
	>	const extern
		PR_nQ
	;
	DeduceTerm
	<	PnR or Q
	>	const extern
		PnR_Q
	;

	DeduceTerm
	<	P or QR
	>	const extern
		P_QR
	;
	DeduceTerm
	<	P or QnR
	>	const extern
		P_QnR
	;
	DeduceTerm
	<	P or nQR
	>	const extern
		P_nQR
	;
	DeduceTerm
	<	P or nQnR
	>	const extern
		P_nQnR
	;
	DeduceTerm
	<	nPnQ or R
	>	const extern
		nPnQ_R
	;

	DeduceTerm
	<	nPR or Q
	>	const extern
		nPR_Q
	;
	DeduceTerm
	<	nPnR or Q
	>	const extern
		nPnR_Q
	;

	DeduceTerm
	<	nP or QR
	>	const extern
		nP_QR
	;
	DeduceTerm
	<	nP or QnR
	>	const extern
		nP_QnR
	;
	DeduceTerm
	<	nP or nQR
	>	const extern
		nP_nQR
	;
	DeduceTerm
	<	nP or nQnR
	>	const extern
		nP_nQnR
	;
}
