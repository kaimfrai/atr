export module Meta.Predicate.UnboundedArray;

export import Meta.TypeTraits;
export import Meta.Logic;

export namespace
	Meta
{
	Term constexpr inline
		IsUnboundedArray
	=	Atom<Trait::UnboundedArray>
	;
}

