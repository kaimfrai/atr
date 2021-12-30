export module Meta.Predicate.Union;

export import Meta.Predicate.UserDefined;

namespace
	Meta
{
	export Term constexpr inline
		IsUnion
	=	IsUserDefined
	and	Term{Trait::Union{}}
	;
}

