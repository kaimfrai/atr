export module Meta.Predicate.Union;

export import Meta.Predicate.UserDefined;

namespace
	Meta
{
	export Term constexpr inline
		IsUnion
	=	IsUserDefined
	and	not
		Term{Trait::Class{}}
	and	Term{Trait::Union{}}
	;
}

