export module Test.Meta.Logic.Cache.PQR_nPnQnR;

export import Test.Meta.Logic.Cache.PQR;

import Meta.Logic.Term;
import Meta.Logic.Disjunction;

using ::Meta::Logic::DeduceTerm;

export
{
	DeduceTerm
	<	PQR or nPnQnR
	>	const extern
		PQR_nPnQnR
	;

	DeduceTerm
	<	PnQR or nPQnR
	>	const extern
		PnQR_nPQnR
	;
}
