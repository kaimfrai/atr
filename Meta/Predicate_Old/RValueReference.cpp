export module Meta.Predicate.RValueReference;

export import Meta.Predicate.LValueReference;

namespace
	Meta
{
	export Term constexpr inline
		IsRValueReference
	=	IsReference
	and	not
		Term{Trait::LValueReference{}}
	;
}

