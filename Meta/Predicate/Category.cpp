export module Meta.Predicate.Category;

export import Meta.Concept.Category;
export import Meta.Logic;

export namespace
	Meta
{
	Term constexpr inline
		IsValue
	{	Trait::Data{true}
	};

	Term constexpr inline
		IsScalar_Ref_Void
	{	Trait::Scalar_Ref_Void{true}
	};

	Term constexpr inline
		IsFund_Array
	{	Trait::Fund_Array{true}
	};

	Term constexpr inline
		IsInt_Enum_Class_LRef_NonQ
	{	Trait::Int_Enum_Class_LRef_NonQ{true}
	};

	Term constexpr inline
		IsSigned_Scoped_Ptr_Noex
	{	Trait::Signed_Scoped_Ptr_Noex{true}
	};

	Term constexpr inline
		IsFunction
	=	not IsFund_Array
	and	not IsScalar_Ref_Void
	and	not IsValue
	;

	Term constexpr inline
		IsNoexceptFunction
	=	IsSigned_Scoped_Ptr_Noex
	and	IsFunction
	;

	Term constexpr inline
		IsQualifiedFunction
	=	not IsInt_Enum_Class_LRef_NonQ
	and	IsFunction
	;

	Term constexpr inline
		IsNonQualifiedFunction
	=	IsInt_Enum_Class_LRef_NonQ
	and	IsFunction
	;

	Term constexpr inline
		IsVoid
	=	IsFund_Array
	and	IsScalar_Ref_Void
	and	not IsValue
	;

	Term constexpr inline
		IsUnboundedArray
	=	IsFund_Array
	and	not IsScalar_Ref_Void
	and	not IsValue
	;

	Term constexpr inline
		IsReference
	=	not IsFund_Array
	and	IsScalar_Ref_Void
	and	not IsValue
	;

	Term constexpr inline
		IsLValueReference
	=	IsInt_Enum_Class_LRef_NonQ
	and	IsReference
	;

	Term constexpr inline
		IsRValueReference
	=	not IsInt_Enum_Class_LRef_NonQ
	and	IsReference
	;

	Term constexpr inline
		IsScalar
	=	IsScalar_Ref_Void
	and	IsValue
	;

	Term constexpr inline
		IsFundamentalScalar
	=	IsFund_Array
	and	IsScalar
	;

	Term constexpr inline
		IsFloatingPoint
	=	IsSigned_Scoped_Ptr_Noex
	and	not IsInt_Enum_Class_LRef_NonQ
	and	IsFundamentalScalar
	;

	Term constexpr inline
		IsIntegral
	=	IsInt_Enum_Class_LRef_NonQ
	and	IsFundamentalScalar
	;

	Term constexpr inline
		IsArithmetic
	=	IsIntegral
	or	IsFloatingPoint
	;

	Term constexpr inline
		IsUnsigned
	=	not IsSigned_Scoped_Ptr_Noex
	and	IsIntegral
	;

	Term constexpr inline
		IsSignedIntegral
	=	IsSigned_Scoped_Ptr_Noex
	and	IsIntegral
	;

	Term constexpr inline
		IsSigned
	=	IsSigned_Scoped_Ptr_Noex
	and	IsFundamentalScalar
	;

	Term constexpr inline
		IsPointer
	=	IsSigned_Scoped_Ptr_Noex
	and	not IsInt_Enum_Class_LRef_NonQ
	and	not IsFund_Array
	and	IsScalar
	;

	Term constexpr inline
		IsNullPointer
	=	not IsSigned_Scoped_Ptr_Noex
	and	not IsInt_Enum_Class_LRef_NonQ
	and	IsFundamentalScalar
	;

	Term constexpr inline
		IsMemberPointer
	=	not IsSigned_Scoped_Ptr_Noex
	and	not IsInt_Enum_Class_LRef_NonQ
	and	not IsFund_Array
	and	IsScalar
	;

	Term constexpr inline
		IsCompoundObject
	=	not IsScalar_Ref_Void
	and	IsValue
	;

	Term constexpr inline
		IsBoundedArray
	=	IsFund_Array
	and	IsCompoundObject
	;

	Term constexpr inline
		IsEnum
	=	IsInt_Enum_Class_LRef_NonQ
	and	not IsFund_Array
	and	IsScalar
	;

	Term constexpr inline
		IsScopedEnum
	=	IsSigned_Scoped_Ptr_Noex
	and	IsEnum
	;

	Term constexpr inline
		IsUnscopedEnum
	=	not IsSigned_Scoped_Ptr_Noex
	and	IsEnum
	;

	Term constexpr inline
		IsCustom
	=	not IsFund_Array
	and	IsCompoundObject
	;

	Term constexpr inline
		IsClass
	=	IsInt_Enum_Class_LRef_NonQ
	and	IsCustom
	;

	Term constexpr inline
		IsUnion
	=	not IsInt_Enum_Class_LRef_NonQ
	and	IsCustom
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
		IsDataMember
	=	IsValue
	or	IsReference
	;

	Term constexpr inline
		IsCVQualifiable
	=	IsObject
	or	IsVoid
	;
}
