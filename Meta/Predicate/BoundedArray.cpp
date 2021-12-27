export module Meta.Predicate.BoundedArray;

export import Meta.Predicate.Array;

namespace
	Meta
{
	export Term constexpr inline
		IsBoundedArray
	=	IsArray
	and	Term{Trait::BoundedArray{}}
	and	not
		Term{Trait::UnboundedArray{}}
	;
}
