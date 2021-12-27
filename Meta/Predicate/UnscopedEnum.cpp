export module Meta.Predicate.UnscopedEnum;

export import Meta.Predicate.Enum;

namespace
	Meta
{
	export Term constexpr inline
		IsUnscopedEnum
	=	IsEnum
	and	not
		Term{Trait::ScopedEnum{}}
	;
}

