export module Meta.Predicate.LValueReference;

export import Meta.TypeTraits;
export import Meta.Logic;

export namespace
	Meta
{
	Term constexpr inline
		IsLValueReference
	=	Atom<Trait::LValueReference>
	;
}
