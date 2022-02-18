export module Meta.Predicate.Category;

export import Meta.Logic.LiteralBase;
export import Meta.Logic;

import Std;

export namespace
	Meta::Trait
{
	///	Object types which may store data. In particular, this exculdes unbound arrays.
	///	This has a real semantic meaning, in particular for types used as members in a class.
	///	In combination with the following traits, all types categories are distinguished with
	///	as few traits as possible.
	struct
		Data final
	:	LiteralBase
	{
		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return
			(	Polarity
			==	(	::std::is_object_v<t_tEntity>
				and	not
					::std::is_unbounded_array_v<t_tEntity>
				)
			);
		}
	};

	///	Primarily serves to distinguish type categories with as few traits as possible.
	///	Void, References vs. Functions, Unbounded Arrays.
	///	Scalar vs. Bounded Arrays, Classes, Unions.
	struct
		Scalar_Ref_Void final
	:	LiteralBase
	{
		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return
				Polarity
			==	(	::std::is_scalar_v<t_tEntity>
				or	::std::is_reference_v<t_tEntity>
				or	::std::is_void_v<t_tEntity>
				)
			;
		}
	};

	///	Primarily serves to distinguish type categories with as few traits as possible.
	///	Arithmetic, Nullpointer vs. Enum, Member Pointer, Pointer.
	///	Bounded Array vs. Class, Union.
	///	Void vs. Reference
	///	UnbounedArray vs. Function
	struct
		Fund_Array final
	:	LiteralBase
	{
		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return
				Polarity
			==	(	::std::is_fundamental_v<t_tEntity>
				or	::std::is_array_v<t_tEntity>
				)
			;
		}
	};

	///	Primarily serves to distinguish type categories with as few traits as possible.
	///	Integral vs. Floating Point, Nullpointer.
	///	Enum vs. Member Pointer, Pointer.
	///	Class vs. Union.
	///	LValueReference vs. RValueReference.
	///	Non-Qualified Function vs. Qualified Function.
	struct
		Int_Enum_Class_LRef_NonQ final
	:	LiteralBase
	{
		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return
				Polarity
			==	(	::std::is_integral_v<t_tEntity>
				or	::std::is_enum_v<t_tEntity>
				or	::std::is_class_v<t_tEntity>
				or	::std::is_lvalue_reference_v<t_tEntity>
				or	(	::std::is_function_v<t_tEntity>
					and	requires{Type<t_tEntity*>; }
					)
				)
			;
		}
	};

	///	Primarily serves to distinguish type categories with as few traits as possible.
	///	Signed Integral vs. Unsigned Integral.
	///	Scoped Enum vs. Unscoped Enum.
	///	Pointer vs. Member Pointer.
	struct
		Signed_Scoped_Ptr final
	:	LiteralBase
	{
		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
			)	const
		->	bool
		{	return
				Polarity
			==	(	::std::is_signed_v<t_tEntity>
				or	::std::is_scoped_enum_v<t_tEntity>
				or	::std::is_pointer_v<t_tEntity>
				)
			;
		}
	};
}

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
		IsSigned_Scoped_Ptr
	{	Trait::Signed_Scoped_Ptr{true}
	};

	Term constexpr inline
		IsFunction
	=	not IsFund_Array
	and	not IsScalar_Ref_Void
	and	not IsValue
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
	=	IsSigned_Scoped_Ptr
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
	=	not IsSigned_Scoped_Ptr
	and	IsIntegral
	;

	Term constexpr inline
		IsSignedIntegral
	=	IsSigned_Scoped_Ptr
	and	IsIntegral
	;

	Term constexpr inline
		IsSigned
	=	IsSigned_Scoped_Ptr
	and	IsFundamentalScalar
	;

	Term constexpr inline
		IsPointer
	=	IsSigned_Scoped_Ptr
	and	not IsInt_Enum_Class_LRef_NonQ
	and	not IsFund_Array
	and	IsScalar
	;

	Term constexpr inline
		IsNullPointer
	=	not IsSigned_Scoped_Ptr
	and	not IsInt_Enum_Class_LRef_NonQ
	and	IsFundamentalScalar
	;

	Term constexpr inline
		IsMemberPointer
	=	not IsSigned_Scoped_Ptr
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
	=	IsSigned_Scoped_Ptr
	and	IsEnum
	;

	Term constexpr inline
		IsUnscopedEnum
	=	not IsSigned_Scoped_Ptr
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
