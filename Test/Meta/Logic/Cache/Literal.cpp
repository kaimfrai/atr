export module Test.Meta.Logic.Cache.Literal;

import Test.Meta.Logic.Term;

import Meta.Logic;

export
{
	struct p{};
	TestTerm constexpr inline P{::Meta::ErasedLiteral<p>};
	struct q{};
	TestTerm constexpr inline Q{::Meta::ErasedLiteral<q>};
	struct r{};
	TestTerm constexpr inline R{::Meta::ErasedLiteral<r>};

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
