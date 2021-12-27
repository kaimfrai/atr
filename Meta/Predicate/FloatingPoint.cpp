export module Meta.Predicate.FloatingPoint;

export import Meta.Predicate.Arithmetic;

namespace
	Meta
{
	export Term constexpr inline
		IsFloatingPoint
	=	IsArithmetic
	and	Term{Trait::FloatingPoint{}}
	;
}
