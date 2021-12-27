export module Meta.Logic.Test.Data;

export import Meta.Logic;

export
{
	///	Constants
	::Meta::Term constexpr inline T
	=	::Meta::True;
	::Meta::Term constexpr inline F
	=	::Meta::False;

	/// Literals
	struct P{};
	::Meta::Term constexpr inline p
	=	::Meta::Term{P{}};
	struct Q{};
	::Meta::Term constexpr inline q
	=	::Meta::Term{Q{}};
	struct R{};
	::Meta::Term constexpr inline r
	=	::Meta::Term{R{}};
}
