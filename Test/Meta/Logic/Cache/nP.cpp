export module Test.Meta.Logic.Cache.nP;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.P;

export
{
	auto constexpr inline
		nP
	=	not
		P
	;

	auto constexpr inline
		nQ
	=	not
		Q
	;

	auto constexpr inline
		nR
	=	not
		R
	;
}
