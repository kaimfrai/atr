export module Meta.Predicate.UnboundedArray;

export import Meta.Predicate.Array;

namespace
	Meta
{
	export auto constexpr inline
		IsUnboundedArray
	=	IsArray
	and	not
		Term{Trait::BoundedArray{}}
	;
}

