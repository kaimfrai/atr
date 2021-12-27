export module Meta.Predicate.Unsigned;

export import Meta.Predicate.Arithmetic;

namespace
	Meta
{
	export Term constexpr inline
		IsUnsigned
	=	IsArithmetic
	and	not
		Term{Trait::Signed{}}
	and	Term{Trait::Unsigned{}}
	;
}
