export module Meta.Predicate.Array;

export import Meta.Predicate.CompoundObject;
export import Meta.Predicate.Scalar;

export namespace
	Meta
{
	Term constexpr inline
		IsArray
	=	IsCompoundObject
	and	Term{Trait::Array{}}
	;
}
