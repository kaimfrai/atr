export module Meta.Predicate.UnscopedEnum;

export import Meta.TypeTraits;
export import Meta.Logic;

namespace
	Meta
{
	export auto constexpr inline
		IsUnscopedEnum
	=	Atom<Trait::UnscopedEnum>
	;
}

