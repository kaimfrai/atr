export module Meta.Predicate.UserDefined;

export import Meta.Predicate.CompoundObject;
export import Meta.Predicate.Scalar;

export namespace
	Meta
{
	Term constexpr inline
		IsUserDefined
	=	IsCompoundObject
	and	not
		IsScalar
	and	not
		Term{Trait::Array{}}
	and	Term{Trait::UserDefined{}}
	;
}

