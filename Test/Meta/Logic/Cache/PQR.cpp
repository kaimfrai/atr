export module Test.Meta.Logic.Cache.PQR;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;

export
{
	DeduceTerm
	<	PQ and R
	>	const extern
		PQR
	;
	DeduceTerm
	<	PQ and nR
	>	const extern
		PQnR
	;
	DeduceTerm
	<	PnQ and R
	>	const extern
		PnQR
	;
	DeduceTerm
	<	PnQ and nR
	>	const extern
		PnQnR
	;

	DeduceTerm
	<	nPQ and R
	>	const extern
		nPQR
	;
	DeduceTerm
	<	nPQ and nR
	>	const extern
		nPQnR
	;
	DeduceTerm
	<	nPnQ and R
	>	const extern
		nPnQR
	;
	DeduceTerm
	<	nPnQ and nR
	>	const extern
		nPnQnR
	;
}
