export module Meta.Predicate.Signed;

export import Meta.Predicate.FloatingPoint;
export import Meta.Predicate.SignedIntegral;

namespace
	Meta
{
	export Term constexpr inline
		IsSigned
	=	IsFloatingPoint
	or	IsSignedIntegral
	;
}
