export module Meta.Predicate.SignedIntegral;

export import Meta.TypeTraits;
export import Meta.Logic;

export namespace
	Meta
{
	Term constexpr inline
		IsSignedIntegral
	=	Atom<Trait::SignedIntegral>
	;
}

