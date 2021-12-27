export module Meta.Predicate.Arithmetic;

export import Meta.Predicate.FundamentalScalar;

namespace
	Meta
{
	export Term constexpr inline
		IsArithmetic
	=	IsFundamentalScalar
	and	Term{Trait::Arithmetic{}}
	and	not
		Term{Trait::NullPointer{}}
	;
}
