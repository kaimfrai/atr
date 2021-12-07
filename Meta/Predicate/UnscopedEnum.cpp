export module Meta.Predicate.UnscopedEnum;

export import Meta.TypeTraits;
export import Meta.Logic;

export namespace
	Meta
{
	Term constexpr inline
		IsUnscopedEnum
	=	Atom<Trait::UnscopedEnum>
	;
}

