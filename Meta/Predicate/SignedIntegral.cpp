export module Meta.Predicate.SignedIntegral;

export import Meta.Predicate.Integral;
export import Meta.Predicate.Signed;

namespace
	Meta
{
	export auto constexpr inline
		IsSignedIntegral
	=	IsIntegral
	and	IsSigned
	;
}

