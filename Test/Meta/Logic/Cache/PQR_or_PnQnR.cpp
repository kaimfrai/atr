export module Test.Meta.Logic.Cache.PQR_or_PnQnR;

export import Test.Meta.Logic.Cache.PQR;

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
	<	PQnR or nPnQnR
	>	const extern
		PQnR_or_nPnQnR
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
	<	nPQnR or nPnQR
	>	const extern
		nPQnR_or_nPnQR
	;
}
