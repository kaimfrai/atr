export module Meta.Predicate.Object;

export import Meta.Predicate.FundamentalScalar;
export import Meta.Predicate.CompoundObject;

namespace
	Meta
{
	export Term constexpr inline
		IsObject
	=	IsFundamentalScalar
	or	IsCompoundObject
	;
}

