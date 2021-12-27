export module Meta.Predicate.Scalar;

export import Meta.Predicate.FundamentalScalar;
export import Meta.Predicate.CompoundScalar;

namespace
	Meta
{
	export Term constexpr inline
		IsScalar
	=	IsFundamentalScalar
	or	IsCompoundScalar
	;
}
