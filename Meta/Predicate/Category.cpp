export module Meta.Predicate.Category;

export import Meta.Concept.Category;
export import Meta.Logic;

export namespace
	Meta
{
	Term constexpr inline
		IsValueTypeCategory
	{	Trait::SizeGreater<>{true}
	};

	Term constexpr inline
		IsDefinedTypeCategory
	{	Trait::Defined{true}
	};

	Term constexpr inline
		IsRestrictedTypeCategory
	{	Trait::Restricted{true}
	};

	Term constexpr inline
		IsSubstituteTypeCategory
	{	Trait::Substitute{true}
	};

	Term constexpr inline
		IsNumericTypeCategory
	{	Trait::Numeric{true}
	};

	Term constexpr inline
		IsValue
	=	IsValueTypeCategory
	;

	Term constexpr inline
		IsFunction
	=	not IsValue
	and	IsDefinedTypeCategory
	;

	Term constexpr inline
		IsNoexceptFunction
	=	IsFunction
	and	IsRestrictedTypeCategory
	;

	Term constexpr inline
		IsQualifiedFunction
	=	IsFunction
	and	IsSubstituteTypeCategory
	;

	Term constexpr inline
		IsNonQualifiedFunction
	=	IsFunction
	and not IsSubstituteTypeCategory
	;

	Term constexpr inline
		IsVoid
	=	not IsValue
	and	not IsDefinedTypeCategory
	and	not IsRestrictedTypeCategory
	and	not IsSubstituteTypeCategory
	;

	Term constexpr inline
		IsUnboundedArray
	=	not IsValue
	and	not IsDefinedTypeCategory
	and	IsRestrictedTypeCategory
	and	not IsSubstituteTypeCategory
	;

	Term constexpr inline
		IsReference
	=	not IsValue
	and	not IsDefinedTypeCategory
	and	IsSubstituteTypeCategory
	;

	Term constexpr inline
		IsLValueReference
	=	IsReference
	and	IsRestrictedTypeCategory
	;

	Term constexpr inline
		IsRValueReference
	=	IsReference
	and	not IsRestrictedTypeCategory
	;

	Term constexpr inline
		IsNumeric
	=	IsValue
	and	IsNumericTypeCategory
	;

	Term constexpr inline
		IsArithmetic
	=	IsNumeric
	and	not IsDefinedTypeCategory
	;

	Term constexpr inline
		IsFloatingPoint
	=	IsArithmetic
	and	not
		IsSubstituteTypeCategory
	;

	Term constexpr inline
		IsIntegral
	=	IsArithmetic
	and	IsSubstituteTypeCategory
	;

	Term constexpr inline
		IsUnsigned
	=	IsIntegral
	and	IsRestrictedTypeCategory
	;

	Term constexpr inline
		IsSignedIntegral
	=	IsIntegral
	and	not IsRestrictedTypeCategory
	;

	Term constexpr inline
		IsSigned
	=	IsFloatingPoint
	or	IsSignedIntegral
	;

	Term constexpr inline
		IsPointer
	=	IsValue
	and	not IsDefinedTypeCategory
	and	not IsRestrictedTypeCategory
	and	IsSubstituteTypeCategory
	and	not IsNumericTypeCategory
	;

	Term constexpr inline
		IsNullPointer
	=	IsValue
	and	not IsDefinedTypeCategory
	and	not IsRestrictedTypeCategory
	and	not IsSubstituteTypeCategory
	and	not IsNumericTypeCategory
	;

	Term constexpr inline
		IsMemberPointer
	=	IsValue
	and	not IsDefinedTypeCategory
	and	IsRestrictedTypeCategory
	and	IsSubstituteTypeCategory
	and	not IsNumericTypeCategory
	;

	Term constexpr inline
		IsBoundedArray
	=	IsValue
	and	not IsDefinedTypeCategory
	and	IsRestrictedTypeCategory
	and	not IsSubstituteTypeCategory
	and	not IsNumericTypeCategory
	;

	Term constexpr inline
		IsEnum
	=	IsNumeric
	and	IsDefinedTypeCategory
	;

	Term constexpr inline
		IsScopedEnum
	=	IsEnum
	and	IsRestrictedTypeCategory
	;

	Term constexpr inline
		IsUnscopedEnum
	=	IsEnum
	and	not IsRestrictedTypeCategory
	;

	Term constexpr inline
		IsCustom
	=	IsValue
	and	IsDefinedTypeCategory
	and	not IsNumericTypeCategory
	;

	Term constexpr inline
		IsClass
	=	IsCustom
	and	IsSubstituteTypeCategory
	;

	Term constexpr inline
		IsUnion
	=	IsCustom
	and	not IsSubstituteTypeCategory
	;

	Term constexpr inline
		IsCompoundObject
	=	IsCustom
	or	IsBoundedArray
	;

	Term constexpr inline
		IsObject
	=	IsValue
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
	=	(	IsValue
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
	=	IsValue
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
	=	IsValue
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
	=	IsValue
	;

	template
		<	USize
				t_nObjectSize
		>
	Term constexpr inline
		IsObjectSizeAtMost
	=	IsValue
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
	=	IsValue
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
