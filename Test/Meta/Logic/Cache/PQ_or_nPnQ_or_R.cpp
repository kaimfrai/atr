export module Test.Meta.Logic.Cache.PQ_or_nPnQ_or_R;

import Test.Meta.Logic.Term;
import Test.Meta.Logic.Cache.Literal;
import Test.Meta.Logic.Cache.PQ_or_nPnQ;

export
{
	auto constexpr inline
		PQ_or_nPnQ_or_R
	=	PQ_or_nPnQ or R
	;
}
