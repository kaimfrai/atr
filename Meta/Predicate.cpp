export module Meta.Predicate;

export import Meta.Concepts;
export import Meta.Logic;

export namespace
	Meta
{
	Term constexpr inline
		IsSizedObject
	{	Trait::SizeGreater<>{}
	};

	Term constexpr inline
		IsDefinedType
	{	Trait::Defined{}
	};

	Term constexpr inline
		IsRestrictedType
	{	Trait::Restricted{}
	};

	Term constexpr inline
		IsConversionTargetType
	{	Trait::ConversionTarget{}
	};

	Term constexpr inline
		IsNumericType
	{	Trait::Numeric{}
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
	and	not IsRestrictedType
	;

	Term constexpr inline
		IsRValueReference
	=	IsReference
	and	IsRestrictedType
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
		IsBase
	=	IsCustom
	and	IsConversionTargetType
	;

	Term constexpr inline
		IsFinal
	=	IsCustom
	and	not IsConversionTargetType
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
		IsPassable
	=	(	IsSizedObject
		and	not IsBoundedArray
		)
	or	IsReference
	;

	Term constexpr inline
		IsReturnable
	=	IsPassable
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

auto constexpr inline f = Meta::IsCompound;
auto constexpr inline g = Meta::IsPassable;
