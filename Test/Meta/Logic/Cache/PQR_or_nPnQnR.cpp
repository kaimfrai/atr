export module Test.Meta.Logic.Cache.PQR_or_nPnQnR;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.PQR;

export
{
	DeduceTerm
	<	PQR or nPnQnR
	>	const extern
		PQR_or_nPnQnR
	;

	DeduceTerm
	<	PnQR or nPQnR
	>	const extern
		PnQR_or_nPQnR
	;
}
