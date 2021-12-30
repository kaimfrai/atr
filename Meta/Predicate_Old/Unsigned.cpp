export module Meta.Predicate.Unsigned;

export import Meta.Predicate.Integral;

namespace
	Meta
{
	export Term constexpr inline
		IsUnsigned
	=	IsIntegral
	and	Term{Trait::Unsigned{}}
	;
}
