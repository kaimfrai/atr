export module Meta.Predicate.UserDefined;

export import Meta.Predicate.Class;
export import Meta.Predicate.Union;

export namespace
	Meta
{
	Term constexpr inline
		IsUserDefined
	=	IsClass
	or	IsUnion
	;
}

