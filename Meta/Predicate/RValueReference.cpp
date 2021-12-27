export module Meta.Predicate.RValueReference;

export import Meta.Predicate.Reference;

namespace
	Meta
{
	export Term constexpr inline
		IsRValueReference
	=	IsReference
	and	not
		Term{Trait::LValueReference{}}
	and	Term{Trait::RValueReference{}}
	;
}

