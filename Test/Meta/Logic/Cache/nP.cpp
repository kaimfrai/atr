export module Test.Meta.Logic.Cache.nP;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.P;

export
{
	auto constexpr inline
		nP
	=	!P
	;
	auto constexpr inline
		nQ
	=	!Q
	;
	auto constexpr inline
		nR
	=	!R
	;
}
