export module Meta.Predicate.Reference;

export import Meta.Predicate.LValueReference;
export import Meta.Predicate.RValueReference;

namespace
	Meta
{
	export auto constexpr inline
		IsReference
	=	IsLValueReference
	or	IsRValueReference
	;
}

