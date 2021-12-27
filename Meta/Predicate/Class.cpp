export module Meta.Predicate.Class;

export import Meta.Predicate.UserDefined;

namespace
	Meta
{
	export Term constexpr inline
		IsClass
	=	IsUserDefined
	and	Term{Trait::Class{}}
	and	not
		Term{Trait::Union{}}
	;
}
