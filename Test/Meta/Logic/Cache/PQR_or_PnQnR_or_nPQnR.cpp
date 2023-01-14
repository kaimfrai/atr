export module Test.Meta.Logic.Cache.PQR_or_PnQnR_or_nPQnR;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.PQR;
import Test.Meta.Logic.Cache.PQR_or_PnQnR;

export
{
	auto constexpr inline
		PQR_or_PnQnR_or_nPQnR
	=	PQR_or_PnQnR or nPQnR
	;
}
