export module Meta.Logic.Test.Data;

export import Meta.Logic;

export
{
	///	Constants
	auto constexpr inline T = ::Meta::ErasedTrue;
	auto constexpr inline F = ::Meta::ErasedFalse;

	/// Literals
	struct P{};
	auto constexpr inline p = ::Meta::ErasedLiteral<P>;
	struct Q{};
	auto constexpr inline q = ::Meta::ErasedLiteral<Q>;
	struct R{};
	auto constexpr inline r = ::Meta::ErasedLiteral<R>;
}
