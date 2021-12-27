import Meta.Predicate;

using namespace Meta;

static_assert
(	(	IsUnsigned
	or	IsSignedIntegral
	)
==	IsIntegral
);

static_assert
(	(	IsSignedIntegral
	or	IsFloatingPoint
	)
==	IsSigned
);

static_assert
(	(	IsIntegral
	or	IsFloatingPoint
	)
==	IsArithmetic
);

static_assert
(	(	IsSigned
	or	IsUnsigned
	)
==	IsArithmetic
);

static_assert
(	(	IsArithmetic
	or	IsNullPointer
	)
==	IsFundamentalScalar
);

static_assert
(	(	IsFundamentalScalar
	or	IsVoid
	)
==	IsFundamental
);

static_assert
(	(	IsClass
	or	IsUnion
	)
==	IsUserDefined
);

static_assert
(	(	IsBoundedArray
	or	IsUnboundedArray
	)
==	IsArray
);

static_assert
(	(	IsScopedEnum
	or	IsUnscopedEnum
	)
==	IsEnum
);

static_assert
(	(	IsEnum
	or	IsPointer
	or	IsMemberPointer
	)
==	IsCompoundScalar
);

static_assert
(	(	IsUserDefined
	or	IsArray
	or	IsCompoundScalar
	)
==	IsCompoundObject
);

static_assert
(	(	IsLValueReference
	or	IsRValueReference
	)
==	IsReference
);

static_assert
(	(	IsReference
	or	IsFunction
	or	IsCompoundObject
	)
==	IsCompound
);

static_assert
(	not
	IsCompound
==	IsFundamental
);

static_assert
(	(	IsArithmetic
	or	IsPointer
	or	IsMemberPointer
	or	IsEnum
	or	IsNullPointer
	)
==	IsScalar
);

static_assert
(	(	not
		IsFunction
	and	not
		IsReference
	and	not
		IsVoid
	)
==	IsObject
);
