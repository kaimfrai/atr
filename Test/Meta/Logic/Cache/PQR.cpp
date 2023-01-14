export module Test.Meta.Logic.Cache.PQR;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;

export
{
	auto constexpr inline
		PQR
	=	PQ and R
	;
	auto constexpr inline
		PQnR
	=	PQ and nR
	;
	auto constexpr inline
		PnQR
	=	PnQ and R
	;
	auto constexpr inline
		PnQnR
	=	PnQ and nR
	;

	auto constexpr inline
		nPQR
	=	nPQ and R
	;
	auto constexpr inline
		nPQnR
	=	nPQ and nR
	;
	auto constexpr inline
		nPnQR
	=	nPnQ and R
	;
	auto constexpr inline
		nPnQnR
	=	nPnQ and nR
	;
}
