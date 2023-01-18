export module Meta.Predicate.Category;

import Meta.Predicate.Match;

import Meta.Logic.LiteralBase;
import Meta.Logic.Term;
import Meta.Logic.Negation;
import Meta.Logic.Conjunction;
import Meta.Logic.Disjunction;
import Meta.Token.Type;
import Meta.Lex.Tokenizer;

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

using ::Meta::Logic::DeduceTerm;
using ::Meta::Logic::DeduceLiteral;

export namespace
	Meta
{
	DeduceLiteral
	<	Trait::Data
	>	const extern
		IsValue
	;

	DeduceLiteral
	<	Trait::Scalar_Ref_Void
	>	const extern
		IsScalar_Ref_Void
	;

	DeduceLiteral
	<	Trait::Fund_Array
	>	const extern
		IsFund_Array
	;

	DeduceLiteral
	<	Trait::Int_Enum_Class_LRef_Free
	>	const extern
		IsInt_Enum_Class_LRef_Free
	;

	DeduceLiteral
	<	Trait::Signed_Scoped_Ptr
	>	const extern
		IsSigned_Scoped_Ptr
	;

	DeduceTerm
	<	not IsFund_Array
	and	not IsScalar_Ref_Void
	and	not IsValue
	>	const extern
		IsFunction
	;

	DeduceTerm
	<	not IsInt_Enum_Class_LRef_Free
	and	IsFunction
	>	const extern
		IsOwnedFunction
	;

	DeduceTerm
	<	IsInt_Enum_Class_LRef_Free
	and	IsFunction
	>	const extern
		IsFreeFunction
	;

	DeduceTerm
	<	IsFund_Array
	and	IsScalar_Ref_Void
	and	not IsValue
	>	const extern
		IsVoid
	;

	DeduceTerm
	<	IsFund_Array
	and	not IsScalar_Ref_Void
	and	not IsValue
	>	const extern
		IsUnboundedArray
	;

	DeduceTerm
	<	not IsFund_Array
	and	IsScalar_Ref_Void
	and	not IsValue
	>	const extern
		IsReference
	;

	DeduceTerm
	<	IsInt_Enum_Class_LRef_Free
	and	IsReference
	>	const extern
		IsLValueReference
	;

	DeduceTerm
	<	not IsInt_Enum_Class_LRef_Free
	and	IsReference
	>	const extern
		IsRValueReference
	;

	DeduceTerm
	<	IsScalar_Ref_Void
	and	IsValue
	>	const extern
		IsScalar
	;

	DeduceTerm
	<	IsFund_Array
	and	IsScalar
	>	const extern
		IsFundamentalScalar
	;

	DeduceTerm
	<	IsSigned_Scoped_Ptr
	and	not IsInt_Enum_Class_LRef_Free
	and	IsFundamentalScalar
	>	const extern
		IsFloatingPoint
	;

	DeduceTerm
	<	IsInt_Enum_Class_LRef_Free
	and	IsFundamentalScalar
	>	const extern
		IsIntegral
	;

	DeduceTerm
	<	IsIntegral
	or	IsFloatingPoint
	>	const extern
		IsArithmetic
	;

	DeduceTerm
	<	not IsSigned_Scoped_Ptr
	and	IsIntegral
	>	const extern
		IsUnsigned
	;

	DeduceTerm
	<	IsSigned_Scoped_Ptr
	and	IsIntegral
	>	const extern
		IsSignedIntegral
	;

	DeduceTerm
	<	IsSigned_Scoped_Ptr
	and	IsFundamentalScalar
	>	const extern
		IsSigned
	;

	DeduceTerm
	<	IsSigned_Scoped_Ptr
	and	not IsInt_Enum_Class_LRef_Free
	and	not IsFund_Array
	and	IsScalar
	>	const extern
		IsPointer
	;

	DeduceTerm
	<	not IsSigned_Scoped_Ptr
	and	not IsInt_Enum_Class_LRef_Free
	and	IsFundamentalScalar
	>	const extern
		IsNullPointer
	;

	DeduceTerm
	<	not IsSigned_Scoped_Ptr
	and	not IsInt_Enum_Class_LRef_Free
	and	not IsFund_Array
	and	IsScalar
	>	const extern
		IsMemberPointer
	;

	DeduceTerm
	<	not IsScalar_Ref_Void
	and	IsValue
	>	const extern
		IsCompoundObject
	;

	DeduceTerm
	<	IsFund_Array
	and	IsCompoundObject
	>	const extern
		IsBoundedArray
	;

	DeduceTerm
	<	IsInt_Enum_Class_LRef_Free
	and	not IsFund_Array
	and	IsScalar
	>	const extern
		IsEnum
	;

	DeduceTerm
	<	IsSigned_Scoped_Ptr
	and	IsEnum
	>	const extern
		IsScopedEnum
	;

	DeduceTerm
	<	not IsSigned_Scoped_Ptr
	and	IsEnum
	>	const extern
		IsUnscopedEnum
	;

	DeduceTerm
	<	not IsFund_Array
	and	IsCompoundObject
	>	const extern
		IsCustom
	;

	DeduceTerm
	<	IsInt_Enum_Class_LRef_Free
	and	IsCustom
	>	const extern
		IsClass
	;

	DeduceTerm
	<	not IsInt_Enum_Class_LRef_Free
	and	IsCustom
	>	const extern
		IsUnion
	;

	DeduceTerm
	<	IsValue
	or	IsUnboundedArray
	>	const extern
		IsObject
	;

	DeduceTerm
	<	IsBoundedArray
	or	IsUnboundedArray
	>	const extern
		IsArray
	;

	DeduceTerm
	<	IsArithmetic
	or	IsVoid
	or	IsNullPointer
	>	const extern
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
	>	const extern
		IsCompound
	;

	DeduceTerm
	<	IsObject
	or	IsFreeFunction
	>	const extern
		IsReferable
	;

	DeduceTerm
	<	IsReferable
	or	IsVoid
	>	const extern
		IsPointable
	;

	DeduceTerm
	<	IsReferable
	or	IsReference
	>	const extern
		IsArgument
	;

	DeduceTerm
	<	(	IsValue
		and	not IsBoundedArray
		)
	or	IsReference
	>	const extern
		IsParameter
	;

	DeduceTerm
	<	IsParameter
	or	IsVoid
	>	const extern
		IsReturnable
	;

	DeduceTerm
	<	IsValue
	or	IsReference
	>	const extern
		IsDataMember
	;

	DeduceTerm
	<	IsObject
	or	IsVoid
	>	const extern
		IsCVQualifiable
	;
}
