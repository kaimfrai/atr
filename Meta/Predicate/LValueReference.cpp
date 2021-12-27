export module Meta.Predicate.LValueReference;

export import Meta.Predicate.Reference;

namespace
	Meta
{
	export Term constexpr inline
		IsLValueReference
	=	IsReference
	and	Term{Trait::LValueReference{}}
	and	not
		Term{Trait::RValueReference{}}
	;
}
