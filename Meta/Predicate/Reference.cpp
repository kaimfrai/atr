export module Meta.Predicate.Reference;

export import Meta.Predicate.LValueReference;
export import Meta.Predicate.RValueReference;

export namespace
	Meta
{
	Term constexpr inline
		IsReference
	=	IsLValueReference
	or	IsRValueReference
	;
}

