export module Meta.Predicate.UserDefined;

export import Meta.Predicate.CompoundObject;

export namespace
	Meta
{
	Term constexpr inline
		IsUserDefined
	=	IsCompoundObject
	and	Term{Trait::UserDefined{}}
	;
}

