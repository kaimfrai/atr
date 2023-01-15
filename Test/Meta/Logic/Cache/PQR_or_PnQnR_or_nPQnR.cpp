export module Test.Meta.Logic.Cache.PQR_or_PnQnR_or_nPQnR;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.PQR_or_PnQnR;

export
{
	DeduceTerm
	<	PQR_or_PnQnR or nPQnR
	>	const extern
		PQR_or_PnQnR_or_nPQnR
	;
	DeduceTerm
	<	PQR_or_PnQnR or nPnQR
	>	const extern
		PQR_or_PnQnR_or_nPnQR
	;

	DeduceTerm
	<	PQnR_or_PnQR or nPQR
	>	const extern
		PQnR_or_PnQR_or_nPQR
	;
}
