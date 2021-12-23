export module Meta.Predicate.UnsignedIntegral;

export import Meta.TypeTraits;
export import Meta.Logic;

namespace
	Meta
{
	export auto constexpr inline
		IsUnsignedIntegral
	=	Atom<Trait::UnsignedIntegral>
	;
}

