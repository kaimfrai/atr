export module Test.Meta.Logic.Cache.P_or_Q_or_R;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.P_or_Q;

export
{
	auto constexpr inline
		P_or_Q_or_R
	=	P_or_Q or R
	;
	auto constexpr inline
		nP_or_Q_or_R
	=	nP_or_Q or R
	;
}
