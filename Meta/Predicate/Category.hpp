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
	extern decltype(Literal<Trait::Data>)
		IsValue
	;

	extern decltype(Literal<Trait::Scalar_Ref_Void>)
		IsScalar_Ref_Void
	;

	extern decltype(Literal<Trait::Fund_Array>)
		IsFund_Array
	;

	extern decltype(Literal<Trait::Int_Enum_Class_LRef_Free>)
		IsInt_Enum_Class_LRef_Free
	;

	extern decltype(Literal<Trait::Signed_Scoped_Ptr>)
		IsSigned_Scoped_Ptr
	;

	extern decltype
	(	not IsFund_Array
	and	not IsScalar_Ref_Void
	and	not IsValue
	)	IsFunction
	;

	extern decltype
	(	not IsInt_Enum_Class_LRef_Free
	and	IsFunction
	)	IsOwnedFunction
	;

	extern decltype
	(	IsInt_Enum_Class_LRef_Free
	and	IsFunction
	)	IsFreeFunction
	;

	extern decltype
	(	IsFund_Array
	and	IsScalar_Ref_Void
	and	not IsValue
	)	IsVoid
	;

	extern decltype
	(	IsFund_Array
	and	not IsScalar_Ref_Void
	and	not IsValue
	)	IsUnboundedArray
	;

	extern decltype
	(	not IsFund_Array
	and	IsScalar_Ref_Void
	and	not IsValue
	)	IsReference
	;

	extern decltype
	(	IsInt_Enum_Class_LRef_Free
	and	IsReference
	)	IsLValueReference
	;

	extern decltype
	(	not IsInt_Enum_Class_LRef_Free
	and	IsReference
	)	IsRValueReference
	;

	extern decltype
	(	IsScalar_Ref_Void
	and	IsValue
	)	IsScalar
	;

	extern decltype
	(	IsFund_Array
	and	IsScalar
	)	IsFundamentalScalar
	;

	extern decltype
	(	IsSigned_Scoped_Ptr
	and	not IsInt_Enum_Class_LRef_Free
	and	IsFundamentalScalar
	)	IsFloatingPoint
	;

	extern decltype
	(	IsInt_Enum_Class_LRef_Free
	and	IsFundamentalScalar
	)	IsIntegral
	;

	extern decltype
	(	IsIntegral
	or	IsFloatingPoint
	)	IsArithmetic
	;

	extern decltype
	(	not IsSigned_Scoped_Ptr
	and	IsIntegral
	)	IsUnsigned
	;

	extern decltype
	(	IsSigned_Scoped_Ptr
	and	IsIntegral
	)	IsSignedIntegral
	;

	extern decltype
	(	IsSigned_Scoped_Ptr
	and	IsFundamentalScalar
	)	IsSigned
	;

	extern decltype
	(	IsSigned_Scoped_Ptr
	and	not IsInt_Enum_Class_LRef_Free
	and	not IsFund_Array
	and	IsScalar
	)	IsPointer
	;

	extern decltype
	(	not IsSigned_Scoped_Ptr
	and	not IsInt_Enum_Class_LRef_Free
	and	IsFundamentalScalar
	)	IsNullPointer
	;

	extern decltype
	(	not IsSigned_Scoped_Ptr
	and	not IsInt_Enum_Class_LRef_Free
	and	not IsFund_Array
	and	IsScalar
	)	IsMemberPointer
	;

	extern decltype
	(	not IsScalar_Ref_Void
	and	IsValue
	)	IsCompoundObject
	;

	extern decltype
	(	IsFund_Array
	and	IsCompoundObject
	)	IsBoundedArray
	;

	extern decltype
	(	IsInt_Enum_Class_LRef_Free
	and	not IsFund_Array
	and	IsScalar
	)	IsEnum
	;

	extern decltype
	(	IsSigned_Scoped_Ptr
	and	IsEnum
	)	IsScopedEnum
	;

	extern decltype
	(	not IsSigned_Scoped_Ptr
	and	IsEnum
	)	IsUnscopedEnum
	;

	extern decltype
	(	not IsFund_Array
	and	IsCompoundObject
	)	IsCustom
	;

	extern decltype
	(	IsInt_Enum_Class_LRef_Free
	and	IsCustom
	)	IsClass
	;

	extern decltype
	(	not IsInt_Enum_Class_LRef_Free
	and	IsCustom
	)	IsUnion
	;

	extern decltype
	(	IsValue
	or	IsUnboundedArray
	)	IsObject
	;

	extern decltype
	(	IsBoundedArray
	or	IsUnboundedArray
	)	IsArray
	;

	extern decltype
	(	IsArithmetic
	or	IsVoid
	or	IsNullPointer
	)	IsFundamental
	;

	extern decltype
	(	IsFunction
	or	IsReference
	or	IsArray
	or	IsPointer
	or	IsMemberPointer
	or	IsCustom
	or	IsEnum
	)	IsCompound
	;

	extern decltype
	(	IsObject
	or	IsFreeFunction
	)	IsReferable
	;

	extern decltype
	(	IsReferable
	or	IsVoid
	)	IsPointable
	;

	extern decltype
	(	IsReferable
	or	IsReference
	)	IsArgument
	;

	extern decltype
	(	(	IsValue
		and	not IsBoundedArray
		)
	or	IsReference
	)	IsParameter
	;

	extern decltype
	(	IsParameter
	or	IsVoid
	)	IsReturnable
	;

	extern decltype
	(	IsValue
	or	IsReference
	)	IsDataMember
	;

	extern decltype
	(	IsObject
	or	IsVoid
	)	IsCVQualifiable
	;
}
