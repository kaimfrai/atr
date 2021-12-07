export module Meta.Predicate.Union;

export import Meta.TypeTraits;
export import Meta.Logic;

export namespace
	Meta
{
	Term constexpr inline
		IsUnion
	=	Atom<Trait::Union>
	;
}

