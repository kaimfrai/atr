export module Meta.Predicate.UnscopedEnum;

export import Meta.Predicate.Enum;

namespace
	Meta
{
	export Term constexpr inline
		IsScopedEnum
	=	IsEnum
	and	not
		Term{Trait::ScopedEnum{}}
	;
}

