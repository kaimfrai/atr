export module Meta.Predicate.Signed;

export import Meta.Predicate.Arithmetic;

namespace
	Meta
{
	export Term constexpr inline
		IsSigned
	=	IsArithmetic
	and	Term{Trait::Signed{}}
	and	not
		Term{Trait::Unsigned{}}
	;
}
