export module Test.Meta.Logic.Cache.P_Q_R;

export import Test.Meta.Logic.Cache.P;
export import Test.Meta.Logic.Cache.nP;
export import Test.Meta.Logic.Cache.P_Q;

export
{
	DeduceTerm
	<	P_Q or R
	>	const extern
		P_Q_R
	;
	DeduceTerm
	<	P_Q or nR
	>	const extern
		P_Q_nR
	;

	DeduceTerm
	<	P_nQ or R
	>	const extern
		P_nQ_R
	;
	DeduceTerm
	<	P_nQ or nR
	>	const extern
		P_nQ_nR
	;

	DeduceTerm
	<	nP_Q or R
	>	const extern
		nP_Q_R
	;
	DeduceTerm
	<	nP_Q or nR
	>	const extern
		nP_Q_nR
	;

	DeduceTerm
	<	nP_nQ or R
	>	const extern
		nP_nQ_R
	;
	DeduceTerm
	<	nP_nQ or nR
	>	const extern
		nP_nQ_nR
	;
}
