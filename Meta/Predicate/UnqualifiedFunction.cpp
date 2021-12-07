export module Meta.Predicate.UnqualifiedFunction;

export import Meta.TypeTraits;
export import Meta.Logic;

export namespace
	Meta
{
	Term constexpr inline
		IsUnqualifiedFunction
	=	Atom<Trait::UnqualifiedFunction>
	;
}

