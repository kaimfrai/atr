export module Test.Meta.Logic.Cache.PQR_or_PnQnR;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.PQR;

export
{
	auto constexpr inline
		PQR_or_PnQnR
	=	PQR or PnQnR
	;
	auto constexpr inline
		PQR_or_nPQnR
	=	PQR or nPQnR
	;
	auto constexpr inline
		PQR_or_nPnQR
	=	PQR or nPnQR
	;

	auto constexpr inline
		PQnR_or_PnQR
	=	PQnR or PnQR
	;
	auto constexpr inline
		PQnR_or_nPQR
	=	PQnR or nPQR
	;
	auto constexpr inline
		PQnR_or_nPnQnR
	=	PQnR or nPnQnR
	;

	auto constexpr inline
		PnQR_or_nPQR
	=	PnQR or nPQR
	;

	auto constexpr inline
		PnQnR_or_nPQnR
	=	PnQnR or nPQnR
	;
	auto constexpr inline
		PnQnR_or_nPnQR
	=	PnQnR or nPnQR
	;

	auto constexpr inline
		nPQR_or_nPnQnR
	=	nPQR or nPnQnR
	;

	auto constexpr inline
		nPQnR_or_nPnQR
	=	nPQnR or nPnQR
	;
}
