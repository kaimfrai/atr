export module Meta.Logic.Test.Data;

export import Meta.Logic;

export
{
	///	Constants
	auto constexpr inline T
	=	Meta::True;
	auto constexpr inline F
	=	Meta::False;

	/// Literals
	struct P{};
	auto constexpr inline p
	=	Meta::Atom<P>;
	struct Q{};
	auto constexpr inline q
	=	Meta::Atom<Q>;
	struct R{};
	auto constexpr inline r
	=	Meta::Atom<R>;
}
