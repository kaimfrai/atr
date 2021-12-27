export module Meta.Predicate.Scalar;

export import Meta.Predicate.Object;

namespace
	Meta
{
	export Term constexpr inline
		IsScalar
	=	IsObject
	and	Term{Trait::Scalar{}}
	;
}
