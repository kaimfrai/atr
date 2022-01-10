export module Meta.Predicate.Category;

export import Meta.Concept.Category;
export import Meta.Logic;

export namespace
	Meta
{
	Term constexpr inline
		IsSizedObject
	{	Trait::SizeGreater<>{true}
	};

	Term constexpr inline
		IsDefinedType
	{	Trait::Defined{true}
	};

	Term constexpr inline
		IsRestrictedType
	{	Trait::Restricted{true}
	};

	Term constexpr inline
		IsConversionTargetType
	{	Trait::ConversionTarget{true}
	};

	Term constexpr inline
		IsNumericType
	{	Trait::Numeric{true}
	};

	Term constexpr inline
		IsFunction
	=	not IsSizedObject
	and	IsDefinedType
	;

	Term constexpr inline
		IsNoexceptFunction
	=	IsFunction
	and	IsRestrictedType
	;

	Term constexpr inline
		IsQualifiedFunction
	=	IsFunction
	and	IsConversionTargetType
	;

	Term constexpr inline
		IsNonQualifiedFunction
	=	IsFunction
	and not IsConversionTargetType
	;

	Term constexpr inline
		IsVoid
	=	not IsSizedObject
	and	not IsDefinedType
	and	not IsRestrictedType
	and	not IsConversionTargetType
	;

	Term constexpr inline
		IsUnboundedArray
	=	not IsSizedObject
	and	not IsDefinedType
	and	IsRestrictedType
	and	not IsConversionTargetType
	;

	Term constexpr inline
		IsReference
	=	not IsSizedObject
	and	not IsDefinedType
	and	IsConversionTargetType
	;

	Term constexpr inline
		IsLValueReference
	=	IsReference
	and	IsRestrictedType
	;

	Term constexpr inline
		IsRValueReference
	=	IsReference
	and	not IsRestrictedType
	;

	Term constexpr inline
		IsNumeric
	=	IsSizedObject
	and	IsNumericType
	;

	Term constexpr inline
		IsArithmetic
	=	IsNumeric
	and	not IsDefinedType
	;

	Term constexpr inline
		IsFloatingPoint
	=	IsArithmetic
	and	not
		IsConversionTargetType
	;

	Term constexpr inline
		IsIntegral
	=	IsArithmetic
	and	IsConversionTargetType
	;

	Term constexpr inline
		IsUnsigned
	=	IsIntegral
	and	IsRestrictedType
	;

	Term constexpr inline
		IsSignedIntegral
	=	IsIntegral
	and	not IsRestrictedType
	;

	Term constexpr inline
		IsSigned
	=	IsFloatingPoint
	or	IsSignedIntegral
	;

	Term constexpr inline
		IsPointer
	=	IsSizedObject
	and	not IsDefinedType
	and	not IsRestrictedType
	and	IsConversionTargetType
	and	not IsNumericType
	;

	Term constexpr inline
		IsNullPointer
	=	IsSizedObject
	and	not IsDefinedType
	and	not IsRestrictedType
	and	not IsConversionTargetType
	and	not IsNumericType
	;

	Term constexpr inline
		IsMemberPointer
	=	IsSizedObject
	and	not IsDefinedType
	and	IsRestrictedType
	and	IsConversionTargetType
	and	not IsNumericType
	;

	Term constexpr inline
		IsBoundedArray
	=	IsSizedObject
	and	not IsDefinedType
	and	IsRestrictedType
	and	not IsConversionTargetType
	and	not IsNumericType
	;

	Term constexpr inline
		IsEnum
	=	IsNumeric
	and	IsDefinedType
	;

	Term constexpr inline
		IsScopedEnum
	=	IsEnum
	and	IsRestrictedType
	;

	Term constexpr inline
		IsUnscopedEnum
	=	IsEnum
	and	not IsRestrictedType
	;

	Term constexpr inline
		IsCustom
	=	IsSizedObject
	and	IsDefinedType
	and	not IsNumericType
	;

	Term constexpr inline
		IsClass
	=	IsCustom
	and	IsConversionTargetType
	;

	Term constexpr inline
		IsUnion
	=	IsCustom
	and	not IsConversionTargetType
	;

	Term constexpr inline
		IsCompoundObject
	=	IsCustom
	or	IsBoundedArray
	;

	Term constexpr inline
		IsObject
	=	IsSizedObject
	or	IsUnboundedArray
	;

	Term constexpr inline
		IsArray
	=	IsBoundedArray
	or	IsUnboundedArray
	;

	Term constexpr inline
		IsFundamental
	=	IsArithmetic
	or	IsVoid
	or	IsNullPointer
	;

	Term constexpr inline
		IsCompound
	=	IsFunction
	or	IsReference
	or	IsArray
	or	IsPointer
	or	IsMemberPointer
	or	IsCustom
	or	IsEnum
	;

	Term constexpr inline
		IsScalar
	=	IsNumeric
	or	IsNullPointer
	or	IsPointer
	or	IsMemberPointer
	;

	Term constexpr inline
		IsReferable
	=	IsObject
	or	IsNonQualifiedFunction
	;

	Term constexpr inline
		IsPointable
	=	IsReferable
	or	IsVoid
	;

	Term constexpr inline
		IsArgument
	=	IsObject
	or	IsNonQualifiedFunction
	or	IsReference
	;

	Term constexpr inline
		IsParameter
	=	(	IsSizedObject
		and	not IsBoundedArray
		)
	or	IsReference
	;

	Term constexpr inline
		IsReturnable
	=	IsParameter
	or	IsVoid
	;

	Term constexpr inline
		IsMember
	=	IsSizedObject
	or	IsReference
	;

	Term constexpr inline
		IsCVQualifiable
	=	IsObject
	or	IsVoid
	;

	template
		<	USize
				t_nObjectSize
		>
	Term constexpr inline
		IsObjectSizeGreater
	=	Term{Trait::SizeGreater<t_nObjectSize>{}}
	and	IsObjectSizeGreater<t_nObjectSize - 1uz>
	;

	template<>
	Term constexpr inline
		IsObjectSizeGreater<0uz>
	=	IsSizedObject
	;

	template
		<	USize
				t_nObjectSize
		>
	Term constexpr inline
		IsObjectSizeAtLeast
	=	IsObjectSizeGreater
		<	t_nObjectSize
		-	1uz
		>
	;

	template<>
	Term constexpr inline
		IsObjectSizeAtLeast
		<	0uz
		>
	=	IsSizedObject
	;

	template
		<	USize
				t_nObjectSize
		>
	Term constexpr inline
		IsObjectSizeAtMost
	=	IsSizedObject
	and	not
		IsObjectSizeGreater
		<	t_nObjectSize
		>
	;

	template
		<	USize
				t_nObjectSize
		>
	Term constexpr inline
		IsObjectSizeLess
	=	IsSizedObject
	and	not
		IsObjectSizeAtLeast
		<	t_nObjectSize
		>
	;

	template
		<	USize
				t_nObjectSize
		>
	Term constexpr inline
		IsObjectSize
	=	IsObjectSizeAtMost
		<	t_nObjectSize
		>
	and	IsObjectSizeAtLeast
		<	t_nObjectSize
		>
	;
}
