export module Meta.Predicate:Category;

export import :Match;

export import Meta.Logic;

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
	,	MatchScalar
	,	MatchBoundedArray
	,	MatchClass
	,	MatchUnion
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
			Evaluate
			(	*this
			,	TokenizeType<t_tEntity>
			);
		}
	};

	///	Primarily serves to distinguish type categories with as few traits as possible.
	///	Void, References vs. Functions, Unbounded Arrays.
	///	Scalar vs. Bounded Arrays, Classes, Unions.
	struct
		Scalar_Ref_Void final
	:	LiteralBase
	,	MatchScalar
	,	MatchReference
	,	MatchVoid
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
			Evaluate
			(	*this
			,	TokenizeType<t_tEntity>
			);
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
	,	MatchIntegral
	,	MatchFloatingPoint
	,	MatchNullPointer
	,	MatchBoundedArray
	,	MatchVoid
	,	MatchUnboundedArray
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
			Evaluate
			(	*this
			,	TokenizeType<t_tEntity>
			);
		}
	};

	///	Primarily serves to distinguish type categories with as few traits as possible.
	///	Integral vs. Floating Point, Nullpointer.
	///	Enum vs. Member Pointer, Pointer.
	///	Class vs. Union.
	///	LValueReference vs. RValueReference.
	///	Free Function vs. Owned Function.
	struct
		Int_Enum_Class_LRef_Free final
	:	LiteralBase
	,	MatchIntegral
	,	MatchEnum
	,	MatchClass
	,	MatchLRef
	,	MatchFreeFunction
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
			Evaluate
			(	*this
			,	TokenizeType<t_tEntity>
			);
		}
	};

	///	Primarily serves to distinguish type categories with as few traits as possible.
	///	Signed Integral vs. Unsigned Integral.
	///	Floating Point vs. NullPointer.
	///	Scoped Enum vs. Unscoped Enum.
	///	Pointer vs. Member Pointer.
	struct
		Signed_Scoped_Ptr final
	:	LiteralBase
	,	MatchSignedIntegral
	,	MatchFloatingPoint
	,	MatchScopedEnum
	,	MatchPointer
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
			Evaluate
			(	*this
			,	TokenizeType<t_tEntity>
			);
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
		IsInt_Enum_Class_LRef_Free
	{	Trait::Int_Enum_Class_LRef_Free{true}
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
		IsOwnedFunction
	=	not IsInt_Enum_Class_LRef_Free
	and	IsFunction
	;

	Term constexpr inline
		IsFreeFunction
	=	IsInt_Enum_Class_LRef_Free
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
	=	IsInt_Enum_Class_LRef_Free
	and	IsReference
	;

	Term constexpr inline
		IsRValueReference
	=	not IsInt_Enum_Class_LRef_Free
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
	and	not IsInt_Enum_Class_LRef_Free
	and	IsFundamentalScalar
	;

	Term constexpr inline
		IsIntegral
	=	IsInt_Enum_Class_LRef_Free
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
	and	not IsInt_Enum_Class_LRef_Free
	and	not IsFund_Array
	and	IsScalar
	;

	Term constexpr inline
		IsNullPointer
	=	not IsSigned_Scoped_Ptr
	and	not IsInt_Enum_Class_LRef_Free
	and	IsFundamentalScalar
	;

	Term constexpr inline
		IsMemberPointer
	=	not IsSigned_Scoped_Ptr
	and	not IsInt_Enum_Class_LRef_Free
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
	=	IsInt_Enum_Class_LRef_Free
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
	=	IsInt_Enum_Class_LRef_Free
	and	IsCustom
	;

	Term constexpr inline
		IsUnion
	=	not IsInt_Enum_Class_LRef_Free
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
	or	IsFreeFunction
	;

	Term constexpr inline
		IsPointable
	=	IsReferable
	or	IsVoid
	;

	Term constexpr inline
		IsArgument
	=	IsReferable
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
