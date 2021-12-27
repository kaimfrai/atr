export module Meta.Predicate.UnsignedIntegral;

export import Meta.Predicate.Integral;
export import Meta.Predicate.Unsigned;

namespace
	Meta
{
	export auto constexpr inline
		IsUnsignedIntegral
	=	IsIntegral
	and	IsUnsigned
	;
}

