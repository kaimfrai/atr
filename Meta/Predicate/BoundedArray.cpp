export module Meta.Predicate.BoundedArray;

export import Meta.TypeTraits;
export import Meta.Logic;

export namespace
	Meta
{
	Term constexpr inline
		IsBoundedArray
	=	Atom<Trait::BoundedArray>
	;
}
