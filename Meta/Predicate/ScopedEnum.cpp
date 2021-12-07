export module Meta.Predicate.ScopedEnum;

export import Meta.TypeTraits;
export import Meta.Logic;

export namespace
	Meta
{
	Term constexpr inline
		IsScopedEnum
	=	Atom<Trait::ScopedEnum>
	;
}

