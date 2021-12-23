export module Meta.Predicate.FloatingPoint;

export import Meta.TypeTraits;
export import Meta.Logic;

namespace
	Meta
{
	export auto constexpr inline
		IsFloatingPoint
	=	Atom<Trait::FloatingPoint>
	;
}
