export module Test.Meta.Logic.Cache.PQR_PnQnR;

export import Test.Meta.Logic.Cache.PQR;

import Meta.Logic.Term;
import Meta.Logic.Disjunction;

using ::Meta::Logic::DeduceTerm;

export
{
	DeduceTerm
	<	PQR or PnQnR
	>	const extern
		PQR_PnQnR
	;
	DeduceTerm
	<	PQR or nPQnR
	>	const extern
		PQR_nPQnR
	;
	DeduceTerm
	<	PQR or nPnQR
	>	const extern
		PQR_nPnQR
	;

	DeduceTerm
	<	PQnR or PnQR
	>	const extern
		PQnR_PnQR
	;
	DeduceTerm
	<	PQnR or nPnQnR
	>	const extern
		PQnR_nPnQnR
	;

	DeduceTerm
	<	PnQnR or nPQnR
	>	const extern
		PnQnR_nPQnR
	;
	DeduceTerm
	<	PnQnR or nPnQR
	>	const extern
		PnQnR_nPnQR
	;

	DeduceTerm
	<	nPQnR or nPnQR
	>	const extern
		nPQnR_nPnQR
	;
}
