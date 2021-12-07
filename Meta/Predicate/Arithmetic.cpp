export module Meta.Predicate.Arithmetic;

export import Meta.Predicate.Integral;
export import Meta.Predicate.FloatingPoint;

export namespace
	Meta
{
	Term constexpr inline
		IsArithmetic
	=	IsIntegral
	or	IsFloatingPoint
	;
}
