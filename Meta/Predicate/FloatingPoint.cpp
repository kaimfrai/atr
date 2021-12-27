export module Meta.Predicate.FloatingPoint;

export import Meta.Predicate.Signed;

namespace
	Meta
{
	export Term constexpr inline
		IsFloatingPoint
	=	IsSigned
	and	Term{Trait::FloatingPoint{}}
	and	not
		Term{Trait::Integral{}}
	;
}
