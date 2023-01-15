export module Test.Meta.Logic.Cache.P_Q;

export import Test.Meta.Logic.Cache.P;
export import Test.Meta.Logic.Cache.nP;

export
{
	DeduceTerm
	<	P or Q
	>	const extern
		P_Q
	;
	DeduceTerm
	<	P or nQ
	>	const extern
		P_nQ
	;

	DeduceTerm
	<	P or R
	>	const extern
		P_R
	;
	DeduceTerm
	<	P or nR
	>	const extern
		P_nR
	;

	DeduceTerm
	<	nP or Q
	>	const extern
		nP_Q
	;
	DeduceTerm
	<	nP or nQ
	>	const extern
		nP_nQ
	;

	DeduceTerm
	<	nP or R
	>	const extern
		nP_R
	;
	DeduceTerm
	<	nP or nR
	>	const extern
		nP_nR
	;

	DeduceTerm
	<	Q or R
	>	const extern
		Q_R
	;
}
