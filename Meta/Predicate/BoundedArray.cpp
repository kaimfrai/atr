export module Meta.Predicate.BoundedArray;

export import Meta.TypeTraits;
export import Meta.Logic;

namespace
	Meta
{
	export auto constexpr inline
		IsBoundedArray
	=	Atom<Trait::BoundedArray>
	;
}
