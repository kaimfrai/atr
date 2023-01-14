export module Test.Meta.Logic.Cache.PQR_or_PnQnR_or_nPQnR_or_nPnQR;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.PQR_or_PnQnR_or_nPQnR;

export
{
	auto constexpr inline
		PQR_or_PnQnR_or_nPQnR_or_nPnQR
	=	PQR_or_PnQnR_or_nPQnR or nPnQR
	;
}
