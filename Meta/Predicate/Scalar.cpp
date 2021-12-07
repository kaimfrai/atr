export module Meta.Predicate.Scalar;

export import Meta.Predicate.NullPointer;
export import Meta.Predicate.Arithmetic;
export import Meta.Predicate.Enum;
export import Meta.Predicate.Pointer;
export import Meta.Predicate.MemberPointer;

export namespace
	Meta
{
	Term constexpr inline
		IsScalar
	=	IsNullPointer
	or	IsArithmetic
	or	IsEnum
	or	IsPointer
	or	IsMemberPointer
	;
}

