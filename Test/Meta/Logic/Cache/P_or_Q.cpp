export module Test.Meta.Logic.Cache.P_or_Q;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;

export
{
	DeduceTerm
	<	P or Q
	>	const extern
		P_or_Q
	;
	DeduceTerm
	<	P or nQ
	>	const extern
		P_or_nQ
	;

	DeduceTerm
	<	P or R
	>	const extern
		P_or_R
	;
	DeduceTerm
	<	P or nR
	>	const extern
		P_or_nR
	;

	DeduceTerm
	<	nP or Q
	>	const extern
		nP_or_Q
	;
	DeduceTerm
	<	nP or nQ
	>	const extern
		nP_or_nQ
	;

	DeduceTerm
	<	nP or R
	>	const extern
		nP_or_R
	;
	DeduceTerm
	<	nP or nR
	>	const extern
		nP_or_nR
	;

	DeduceTerm
	<	Q or R
	>	const extern
		Q_or_R
	;
}
