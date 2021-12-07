export module Meta.Predicate.CompoundObject;

export import Meta.Predicate.Array;
export import Meta.Predicate.UserDefined;

export namespace
	Meta
{
	Term constexpr inline
		IsCompoundObject
	=	IsArray
	or	IsUserDefined
	;
}
