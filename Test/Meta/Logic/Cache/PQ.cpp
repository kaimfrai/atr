export module Test.Meta.Logic.Cache.PQ;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;

export
{
	auto constexpr inline
		PQ
	=	P and Q
	;
	auto constexpr inline
		PnQ
	=	P and nQ
	;
	auto constexpr inline
		PR
	=	P and R
	;
	auto constexpr inline
		PnR
	=	P and nR
	;

	auto constexpr inline
		nPQ
	=	nP and Q
	;
	auto constexpr inline
		nPnQ
	=	nP and nQ
	;
	auto constexpr inline
		nPR
	=	nP and R
	;
	auto constexpr inline
		nPnR
	=	nP and nR
	;

	auto constexpr inline
		QR
	=	Q and R
	;
	auto constexpr inline
		QnR
	=	Q and nR
	;

	auto constexpr inline
		nQR
	=	nQ and R
	;
	auto constexpr inline
		nQnR
	=	nQ and nR
	;
}
