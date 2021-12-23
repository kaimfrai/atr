export module Meta.Predicate.UnboundedArray;

export import Meta.TypeTraits;
export import Meta.Logic;

namespace
	Meta
{
	export auto constexpr inline
		IsUnboundedArray
	=	Atom<Trait::UnboundedArray>
	;
}

