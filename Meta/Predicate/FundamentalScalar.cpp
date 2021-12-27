export module Meta.Predicate.FundamentalScalar;

export import Meta.Predicate.Fundamental;

namespace
	Meta
{
	export Term constexpr inline
		IsFundamentalScalar
	=	IsFundamental
	and	not
		Term{Trait::Void{}}
	;
}
