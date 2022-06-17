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
	DeduceTerm
	<	ErasedLiteral<Trait::Data>
	>	extern
		IsValue
	;

	DeduceTerm
	<	ErasedLiteral<Trait::Scalar_Ref_Void>
	>	extern
		IsScalar_Ref_Void
	;

	DeduceTerm
	<	ErasedLiteral<Trait::Fund_Array>
	>	extern
		IsFund_Array
	;

	DeduceTerm
	<	Literal<Trait::Int_Enum_Class_LRef_Free>
	>	extern
		IsInt_Enum_Class_LRef_Free
	;

	DeduceTerm
	<	Literal<Trait::Signed_Scoped_Ptr>
	>	extern
		IsSigned_Scoped_Ptr
	;

	DeduceTerm
	<	not IsFund_Array
	and	not IsScalar_Ref_Void
	and	not IsValue
	>	extern
		IsFunction
	;

	DeduceTerm
	<	not IsInt_Enum_Class_LRef_Free
	and	IsFunction
	>	extern
		IsOwnedFunction
	;

	DeduceTerm
	<	IsInt_Enum_Class_LRef_Free
	and	IsFunction
	>	extern
		IsFreeFunction
	;

	DeduceTerm
	<	IsFund_Array
	and	IsScalar_Ref_Void
	and	not IsValue
	>	extern
		IsVoid
	;

	DeduceTerm
	<	IsFund_Array
	and	not IsScalar_Ref_Void
	and	not IsValue
	>	extern
		IsUnboundedArray
	;

	DeduceTerm
	<	not IsFund_Array
	and	IsScalar_Ref_Void
	and	not IsValue
	>	extern
		IsReference
	;

	DeduceTerm
	<	IsInt_Enum_Class_LRef_Free
	and	IsReference
	>	extern
		IsLValueReference
	;

	DeduceTerm
	<	not IsInt_Enum_Class_LRef_Free
	and	IsReference
	>	extern
		IsRValueReference
	;

	DeduceTerm
	<	IsScalar_Ref_Void
	and	IsValue
	>	extern
		IsScalar
	;

	DeduceTerm
	<	IsFund_Array
	and	IsScalar
	>	extern
		IsFundamentalScalar
	;

	DeduceTerm
	<	IsSigned_Scoped_Ptr
	and	not IsInt_Enum_Class_LRef_Free
	and	IsFundamentalScalar
	>	extern
		IsFloatingPoint
	;

	DeduceTerm
	<	IsInt_Enum_Class_LRef_Free
	and	IsFundamentalScalar
	>	extern
		IsIntegral
	;

	DeduceTerm
	<	IsIntegral
	or	IsFloatingPoint
	>	extern
		IsArithmetic
	;

	DeduceTerm
	<	not IsSigned_Scoped_Ptr
	and	IsIntegral
	>	extern
		IsUnsigned
	;

	DeduceTerm
	<	IsSigned_Scoped_Ptr
	and	IsIntegral
	>	extern
		IsSignedIntegral
	;

	DeduceTerm
	<	IsSigned_Scoped_Ptr
	and	IsFundamentalScalar
	>	extern
		IsSigned
	;

	DeduceTerm
	<	IsSigned_Scoped_Ptr
	and	not IsInt_Enum_Class_LRef_Free
	and	not IsFund_Array
	and	IsScalar
	>	extern
		IsPointer
	;

	DeduceTerm
	<	not IsSigned_Scoped_Ptr
	and	not IsInt_Enum_Class_LRef_Free
	and	IsFundamentalScalar
	>	extern
		IsNullPointer
	;

	DeduceTerm
	<	not IsSigned_Scoped_Ptr
	and	not IsInt_Enum_Class_LRef_Free
	and	not IsFund_Array
	and	IsScalar
	>	extern
		IsMemberPointer
	;

	DeduceTerm
	<	not IsScalar_Ref_Void
	and	IsValue
	>	extern
		IsCompoundObject
	;

	DeduceTerm
	<	IsFund_Array
	and	IsCompoundObject
	>	extern
		IsBoundedArray
	;

	DeduceTerm
	<	IsInt_Enum_Class_LRef_Free
	and	not IsFund_Array
	and	IsScalar
	>	extern
		IsEnum
	;

	DeduceTerm
	<	IsSigned_Scoped_Ptr
	and	IsEnum
	>	extern
		IsScopedEnum
	;

	DeduceTerm
	<	not IsSigned_Scoped_Ptr
	and	IsEnum
	>	extern
		IsUnscopedEnum
	;

	DeduceTerm
	<	not IsFund_Array
	and	IsCompoundObject
	>	extern
		IsCustom
	;

	DeduceTerm
	<	IsInt_Enum_Class_LRef_Free
	and	IsCustom
	>	extern
		IsClass
	;

	DeduceTerm
	<	not IsInt_Enum_Class_LRef_Free
	and	IsCustom
	>	extern
		IsUnion
	;

	DeduceTerm
	<	IsValue
	or	IsUnboundedArray
	>	extern
		IsObject
	;

	DeduceTerm
	<	IsBoundedArray
	or	IsUnboundedArray
	>	extern
		IsArray
	;

	DeduceTerm
	<	IsArithmetic
	or	IsVoid
	or	IsNullPointer
	>	extern
		IsFundamental
	;

	DeduceTerm
	<	IsFunction
	or	IsReference
	or	IsArray
	or	IsPointer
	or	IsMemberPointer
	or	IsCustom
	or	IsEnum
	>	extern
		IsCompound
	;

	DeduceTerm
	<	IsObject
	or	IsFreeFunction
	>	extern
		IsReferable
	;

	DeduceTerm
	<	IsReferable
	or	IsVoid
	>	extern
		IsPointable
	;

	DeduceTerm
	<	IsReferable
	or	IsReference
	>	extern
		IsArgument
	;

	DeduceTerm
	<	(	IsValue
		and	not IsBoundedArray
		)
	or	IsReference
	>	extern
		IsParameter
	;

	DeduceTerm
	<	IsParameter
	or	IsVoid
	>	extern
		IsReturnable
	;

	DeduceTerm
	<	IsValue
	or	IsReference
	>	extern
		IsDataMember
	;

	DeduceTerm
	<	IsObject
	or	IsVoid
	>	extern
		IsCVQualifiable
	;
}
