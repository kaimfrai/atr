export module Meta.Predicate.NullPointer;

export import Meta.TypeTraits;
export import Meta.Logic;

export namespace
	Meta
{
	Term constexpr inline
		IsNullPointer
	=	Atom<Trait::NullPointer>
	;
}
