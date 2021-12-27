export module Meta.Predicate.SignedIntegral;

export import Meta.Predicate.Integral;

namespace
	Meta
{
	export auto constexpr inline
		IsSignedIntegral
	=	IsIntegral
	and	not
		Term{Trait::Unsigned{}}
	;
}

