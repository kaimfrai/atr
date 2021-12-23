export module Meta.Predicate.ScopedEnum;

export import Meta.TypeTraits;
export import Meta.Logic;

namespace
	Meta
{
	export auto constexpr inline
		IsScopedEnum
	=	Atom<Trait::ScopedEnum>
	;
}

