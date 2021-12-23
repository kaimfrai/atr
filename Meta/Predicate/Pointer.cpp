export module Meta.Predicate.Pointer;

export import Meta.TypeTraits;
export import Meta.Logic;

namespace
	Meta
{
	export auto constexpr inline
		IsPointer
	=	Atom<Trait::Pointer>
	;
}

