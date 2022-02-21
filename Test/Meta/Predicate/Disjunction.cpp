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
	or	IsVoid
	)
==	IsFundamental
);

static_assert
(	(	IsBoundedArray
	or	IsUnboundedArray
	)
==	IsArray
);

static_assert
(	(	IsOwnedFunction
	or	IsFreeFunction
	)
==	IsFunction
);

static_assert
(	(	IsLValueReference
	or	IsRValueReference
	)
==	IsReference
);

static_assert
(	(	IsClass
	or	IsUnion
	)
==	IsCustom
);

static_assert
(	(	IsScopedEnum
	or	IsUnscopedEnum
	)
==	IsEnum
);

static_assert
(	(	IsArray
	or	IsFunction
	or	IsPointer
	or	IsMemberPointer
	or	IsReference
	or	IsCustom
	or	IsEnum
	)
==	IsCompound
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
(	(	IsCustom
	or	IsArray
	or	IsScalar
	)
==	IsObject
);

static_assert
(	(	IsFundamental
	or	IsCompound
	)
==	True
);
