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
		nPQR_or_nPnQnR
	=	nPQR or nPnQnR
	;

	auto constexpr inline
		PQR_or_nPnQR
	=	PQR or nPnQR
	;
}
