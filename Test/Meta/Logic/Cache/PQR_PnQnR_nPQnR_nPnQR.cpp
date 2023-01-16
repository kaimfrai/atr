export module Test.Meta.Logic.Cache.PQR_PnQnR_nPQnR_nPnQR;

export import Test.Meta.Logic.Cache.PQR;
export import Test.Meta.Logic.Cache.PQR_PnQnR_nPQnR;

import Meta.Logic.Term;
import Meta.Logic.Disjunction;

using ::Meta::Logic::DeduceTerm;

export
{
	DeduceTerm
	<	PQR_PnQnR_nPQnR or nPnQR
	>	const extern
		PQR_PnQnR_nPQnR_nPnQR
	;
	DeduceTerm
	<	PQnR_PnQR_nPQR or nPnQnR
	>	const extern
		PQnR_PnQR_nPQR_nPnQnR
	;
}
