export module Test.Meta.Logic.Cache.PQ;

export import Test.Meta.Logic.Cache.P;
export import Test.Meta.Logic.Cache.nP;
import Meta.Logic.Conjunction;

export
{
	DeduceTerm
	<	P and Q
	>	const extern
		PQ
	;
	DeduceTerm
	<	P and nQ
	>	const extern
		PnQ
	;
	DeduceTerm
	<	P and R
	>	const extern
		PR
	;
	DeduceTerm
	<	P and nR
	>	const extern
		PnR
	;

	DeduceTerm
	<	nP and Q
	>	const extern
		nPQ
	;
	DeduceTerm
	<	nP and nQ
	>	const extern
		nPnQ
	;
	DeduceTerm
	<	nP and R
	>	const extern
		nPR
	;
	DeduceTerm
	<	nP and nR
	>	const extern
		nPnR
	;

	DeduceTerm
	<	Q and R
	>	const extern
		QR
	;
	DeduceTerm
	<	Q and nR
	>	const extern
		QnR
	;

	DeduceTerm
	<	nQ and R
	>	const extern
		nQR
	;
	DeduceTerm
	<	nQ and nR
	>	const extern
		nQnR
	;
}
