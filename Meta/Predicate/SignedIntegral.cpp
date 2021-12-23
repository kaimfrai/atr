export module Meta.Predicate.SignedIntegral;

export import Meta.TypeTraits;
export import Meta.Logic;

namespace
	Meta
{
	export auto constexpr inline
		IsSignedIntegral
	=	Atom<Trait::SignedIntegral>
	;
}

