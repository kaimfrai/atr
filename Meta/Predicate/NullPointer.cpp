export module Meta.Predicate.NullPointer;

export import Meta.Predicate.FundamentalScalar;

namespace
	Meta
{
	export Term constexpr inline
		IsNullPointer
	=	IsFundamentalScalar
	and	not
		Term{Trait::Arithmetic{}}
	and	Term{Trait::NullPointer{}}
	;
}
