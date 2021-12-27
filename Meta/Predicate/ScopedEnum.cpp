export module Meta.Predicate.ScopedEnum;

export import Meta.Predicate.Enum;

namespace
	Meta
{
	export Term constexpr inline
		IsScopedEnum
	=	IsEnum
	and	Term{Trait::ScopedEnum{}}
	;
}

