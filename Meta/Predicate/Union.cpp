export module Meta.Predicate.Union;

export import Meta.TypeTraits;
export import Meta.Logic;

namespace
	Meta
{
	export auto constexpr inline
		IsUnion
	=	Atom<Trait::Union>
	;
}

