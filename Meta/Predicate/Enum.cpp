export module Meta.Predicate.Enum;

export import Meta.Predicate.UnscopedEnum;
export import Meta.Predicate.ScopedEnum;

export namespace
	Meta
{
	Term constexpr inline
		IsEnum
	=	IsUnscopedEnum
	or	IsScopedEnum
	;
}
