export module Meta.Predicate.Object;

export import Meta.Predicate.Pointable;

namespace
	Meta
{
	export Term constexpr inline
		IsObject
	=	IsPointable
	and	Term{Trait::Object{}}
	;
}

