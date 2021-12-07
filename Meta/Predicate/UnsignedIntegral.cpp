export module Meta.Predicate.UnsignedIntegral;

export import Meta.TypeTraits;
export import Meta.Logic;

export namespace
	Meta
{
	Term constexpr inline
		IsUnsignedIntegral
	=	Atom<Trait::UnsignedIntegral>
	;
}

