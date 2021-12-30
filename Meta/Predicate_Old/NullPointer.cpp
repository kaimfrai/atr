export module Meta.Predicate.NullPointer;

export import Meta.Predicate.FundamentalScalar;

namespace
	Meta
{
	export Term constexpr inline
		IsNullPointer
	=	IsFundamentalScalar
	and	Term{Trait::NullPointer{}}
	;
}
