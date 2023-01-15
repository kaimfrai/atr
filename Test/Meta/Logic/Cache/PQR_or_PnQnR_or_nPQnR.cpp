export module Test.Meta.Logic.Cache.PQR_PnQnR_nPQnR;

export import Test.Meta.Logic.Cache.PQR;
export import Test.Meta.Logic.Cache.PQR_PnQnR;

export
{
	DeduceTerm
	<	PQR_PnQnR or nPQnR
	>	const extern
		PQR_PnQnR_nPQnR
	;
	DeduceTerm
	<	PQR_PnQnR or nPnQR
	>	const extern
		PQR_PnQnR_nPnQR
	;

	DeduceTerm
	<	PQnR_PnQR or nPQR
	>	const extern
		PQnR_PnQR_nPQR
	;
}
