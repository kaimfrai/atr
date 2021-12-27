export module Meta.Predicate.CompoundScalar;

export import Meta.Predicate.CompoundObject;
export import Meta.Predicate.Scalar;

namespace
	Meta
{
	export Term constexpr inline
		IsCompoundScalar
	=	IsCompoundObject
	and	IsScalar
	and	not
		Term{Trait::Array{}}
	and	not
		Term{Trait::UserDefined{}}
	;
}
