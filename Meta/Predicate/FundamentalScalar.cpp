export module Meta.Predicate.FundamentalScalar;

export import Meta.Predicate.Fundamental;
export import Meta.Predicate.Scalar;

namespace
	Meta
{
	export Term constexpr inline
		IsFundamentalScalar
	=	IsFundamental
	and	IsScalar
	and	not
		Term{Trait::Void()}
	;
}
