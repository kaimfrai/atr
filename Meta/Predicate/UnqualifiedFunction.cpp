export module Meta.Predicate.UnqualifiedFunction;

export import Meta.TypeTraits;
export import Meta.Logic;

namespace
	Meta
{
	export auto constexpr inline
		IsUnqualifiedFunction
	=	Atom<Trait::UnqualifiedFunction>
	;
}

