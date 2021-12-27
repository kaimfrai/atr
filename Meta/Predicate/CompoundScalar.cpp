export module Meta.Predicate.CompoundScalar;

export import Meta.Predicate.CompoundObject;

namespace
	Meta
{
	export Term constexpr inline
		IsCompoundScalar
	=	IsCompoundObject
	and	not
		Term{Trait::Array{}}
	and	not
		Term{Trait::UserDefined{}}
	;
}
