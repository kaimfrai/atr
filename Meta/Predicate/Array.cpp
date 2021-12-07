export module Meta.Predicate.Array;

export import Meta.Predicate.UnboundedArray;
export import Meta.Predicate.BoundedArray;

export namespace
	Meta
{
	Term constexpr inline
		IsArray
	=	IsUnboundedArray
	or	IsBoundedArray
	;
}
