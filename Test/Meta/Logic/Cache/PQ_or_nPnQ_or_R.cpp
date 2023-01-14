export module Test.Meta.Logic.Cache.PQ_or_nPnQ_or_R;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.P;
import Test.Meta.Logic.Cache.nP;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQ_or_R;
import Test.Meta.Logic.Cache.PQ_or_nPnQ;

export
{
	auto constexpr inline
		PQ_or_nPnQ_or_R
	=	PQ_or_nPnQ or R
	;

	auto constexpr inline
		nP_or_nQR_or_QnR
	=	nP_or_nQR or QnR
	;
}
