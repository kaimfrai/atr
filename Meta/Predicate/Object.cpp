export module Meta.Predicate.Object;

export import Meta.Predicate.Scalar;
export import Meta.Predicate.CompoundObject;

export namespace
	Meta
{
	Term constexpr inline
		IsObject
	=	IsScalar
	or	IsCompoundObject
	;
}

