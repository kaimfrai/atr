export module Meta.Predicate.Integral;

export import Meta.Predicate.UnsignedIntegral;
export import Meta.Predicate.SignedIntegral;

namespace
	Meta
{
	export auto constexpr inline
		IsIntegral
	=	IsUnsignedIntegral
	or	IsSignedIntegral
	;
}
