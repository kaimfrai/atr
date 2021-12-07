export module Meta.Predicate.RValueReference;

export import Meta.TypeTraits;
export import Meta.Logic;

export namespace
	Meta
{
	Term constexpr inline
		IsRValueReference
	=	Atom<Trait::RValueReference>
	;
}

