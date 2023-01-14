export module Test.Meta.Logic.Cache.P_or_Q;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;

export
{
	auto constexpr inline
		P_or_Q
	=	P or Q
	;
	auto constexpr inline
		P_or_nQ
	=	P or nQ
	;

	auto constexpr inline
		P_or_R
	=	P or R
	;
	auto constexpr inline
		P_or_nR
	=	P or nR
	;

	auto constexpr inline
		nP_or_Q
	=	nP or Q
	;
	auto constexpr inline
		nP_or_nQ
	=	nP or nQ
	;

	auto constexpr inline
		nP_or_R
	=	nP or R
	;
	auto constexpr inline
		nP_or_nR
	=	nP or nR
	;
}
