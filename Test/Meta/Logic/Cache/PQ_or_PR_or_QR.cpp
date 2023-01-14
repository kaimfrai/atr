export module Test.Meta.Logic.Cache.PQ_or_PR_or_QR;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.PQ;
import Test.Meta.Logic.Cache.PQ_or_PR;

export
{
	auto constexpr inline
		PQ_or_PR_or_QR
	=	PQ_or_PR or QR
	;
}
