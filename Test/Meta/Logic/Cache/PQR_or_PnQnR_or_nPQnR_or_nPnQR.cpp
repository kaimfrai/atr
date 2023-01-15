export module Test.Meta.Logic.Cache.PQR_or_PnQnR_or_nPQnR_or_nPnQR;

export import Test.Meta.Logic.Cache.PQR;
export import Test.Meta.Logic.Cache.PQR_or_PnQnR_or_nPQnR;

export
{
	DeduceTerm
	<	PQR_or_PnQnR_or_nPQnR or nPnQR
	>	const extern
		PQR_or_PnQnR_or_nPQnR_or_nPnQR
	;
	DeduceTerm
	<	PQnR_or_PnQR_or_nPQR or nPnQnR
	>	const extern
		PQnR_or_PnQR_or_nPQR_or_nPnQnR
	;
}
