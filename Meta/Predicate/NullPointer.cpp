export module Meta.Predicate.NullPointer;

export import Meta.TypeTraits;
export import Meta.Logic;

namespace
	Meta
{
	export auto constexpr inline
		IsNullPointer
	=	Atom<Trait::NullPointer>
	;
}
