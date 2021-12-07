export module Meta.Predicate.Pointer;

export import Meta.TypeTraits;
export import Meta.Logic;

export namespace
	Meta
{
	Term constexpr inline
		IsPointer
	=	Atom<Trait::Pointer>
	;
}

