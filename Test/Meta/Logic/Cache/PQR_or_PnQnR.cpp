export module Test.Meta.Logic.Cache.PQR_or_PnQnR;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.PQR;

export
{
	DeduceTerm
	<	PQR or PnQnR
	>	const extern
		PQR_or_PnQnR
	;
	DeduceTerm
	<	PQR or nPQnR
	>	const extern
		PQR_or_nPQnR
	;
	DeduceTerm
	<	PQR or nPnQR
	>	const extern
		PQR_or_nPnQR
	;

	DeduceTerm
	<	PQnR or PnQR
	>	const extern
		PQnR_or_PnQR
	;
	DeduceTerm
	<	PQnR or nPQR
	>	const extern
		PQnR_or_nPQR
	;
	DeduceTerm
	<	PQnR or nPnQnR
	>	const extern
		PQnR_or_nPnQnR
	;

	DeduceTerm
	<	PnQR or nPQR
	>	const extern
		PnQR_or_nPQR
	;

	DeduceTerm
	<	PnQnR or nPQnR
	>	const extern
		PnQnR_or_nPQnR
	;
	DeduceTerm
	<	PnQnR or nPnQR
	>	const extern
		PnQnR_or_nPnQR
	;

	DeduceTerm
	<	nPQR or nPnQnR
	>	const extern
		nPQR_or_nPnQnR
	;

	DeduceTerm
	<	nPQnR or nPnQR
	>	const extern
		nPQnR_or_nPnQR
	;
}
