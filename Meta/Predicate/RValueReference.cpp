export module Meta.Predicate.RValueReference;

export import Meta.TypeTraits;
export import Meta.Logic;

namespace
	Meta
{
	export auto constexpr inline
		IsRValueReference
	=	Atom<Trait::RValueReference>
	;
}

