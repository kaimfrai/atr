export module Meta.Logic.Test.Data;

export import Meta.Logic;

export
{
	///	Constants
	extern decltype(::Meta::True) T;
	extern decltype(::Meta::False) F;

	/// Literals
	struct P{};
	extern decltype(::Meta::Literal<P>) p;
	struct Q{};
	extern decltype(::Meta::Literal<Q>) q;
	struct R{};
	extern decltype(::Meta::Literal<R>) r;
}
