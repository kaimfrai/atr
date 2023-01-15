export module Test.Meta.Logic.Cache.P_or_Q_or_R;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.P_or_Q;

export
{
	DeduceTerm
	<	P_or_Q or R
	>	const extern
		P_or_Q_or_R
	;
	DeduceTerm
	<	P_or_Q or nR
	>	const extern
		P_or_Q_or_nR
	;

	DeduceTerm
	<	P_or_nQ or R
	>	const extern
		P_or_nQ_or_R
	;
	DeduceTerm
	<	P_or_nQ or nR
	>	const extern
		P_or_nQ_or_nR
	;

	DeduceTerm
	<	nP_or_Q or R
	>	const extern
		nP_or_Q_or_R
	;
	DeduceTerm
	<	nP_or_Q or nR
	>	const extern
		nP_or_Q_or_nR
	;

	DeduceTerm
	<	nP_or_nQ or R
	>	const extern
		nP_or_nQ_or_R
	;
	DeduceTerm
	<	nP_or_nQ or nR
	>	const extern
		nP_or_nQ_or_nR
	;
}
