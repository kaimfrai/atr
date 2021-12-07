export module Meta.Predicate.FloatingPoint;

export import Meta.TypeTraits;
export import Meta.Logic;

export namespace
	Meta
{
	Term constexpr inline
		IsFloatingPoint
	=	Atom<Trait::FloatingPoint>
	;
}
