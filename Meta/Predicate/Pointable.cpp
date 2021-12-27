export module Meta.Predicate.Pointable;

export import Meta.TypeTraits;
export import Meta.Logic;

namespace
	Meta
{
	export Term constexpr inline
		IsPointable
	=	Term{Trait::Pointable{}}
	;
}
