export module Meta.Predicate.Integral;

export import Meta.Predicate.Arithmetic;

namespace
	Meta
{
	export auto constexpr inline
		IsIntegral
	=	IsArithmetic
	and	not
		Term{Trait::FloatingPoint{}}
	;
}
