export module Test.Meta.Logic.Cache.Constant;

import Test.Meta.Logic.Term;

import Meta.Logic;

export
{
	TestTerm constexpr inline T{::Meta::ErasedTrue};
	TestTerm constexpr inline F{::Meta::ErasedFalse};
}
