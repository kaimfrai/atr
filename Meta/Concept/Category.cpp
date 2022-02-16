export module Meta.Concept.Category;

export import Std;
export import Meta.Type;
export import Meta.Type.Function;

export namespace
	Meta::Trait
{
	template
		<	typename
				t_tTrait
		,	t_tTrait
				t_fTrait
		>
	struct
		Constraint final
	{
		template
			<	typename
					t_tProto
			>
		static bool constexpr
			Evaluate
		=	t_fTrait
			(	Type<t_tProto>
			)
		;
	};

	template
		<	auto
				t_fTrait
		>
	using
		StaticConstraint
	=	Constraint
		<	decltype(t_fTrait)
		,	t_fTrait
		>
	;

	struct
		LiteralBase
	{
		bool
			Polarity
		=	true
		;

		auto constexpr
		(	operator()
		)	(	EraseTypeToken
			)	const
		->	bool
		{	return not Polarity;	}

		template
			<	typename
					t_tPolar
			>
		friend auto constexpr
		(	operator not
		)	(	t_tPolar
					i_vPolar
			)
		->	t_tPolar
		{
			i_vPolar.Polarity = not i_vPolar.Polarity;
			return i_vPolar;
		}
	};

	struct
		Constant final
	:	LiteralBase
	{
		auto constexpr
		(	operator()
		)	(	EraseTypeToken
			)	const
		->	bool
		{	return Polarity;	}
	};

	auto constexpr inline
		Tautology
	=	Constant{true}
	;

	auto constexpr inline
		Contradiction
	=	Constant{false}
	;

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
	///	Noexcept Function vs. not Noexcept Function.
	struct
		Signed_Scoped_Ptr_Noex final
	:	LiteralBase
	{
		template
			<	typename
					t_tEntity
			>
		auto constexpr
		(	operator()
		)	(	TypeToken<t_tEntity>
					i_vType
			)	const
		->	bool
		{	return
				Polarity
			==	(	::std::is_signed_v<t_tEntity>
				or	::std::is_scoped_enum_v<t_tEntity>
				or	::std::is_pointer_v<t_tEntity>
				or	IsNoexcept(i_vType)
				)
			;
		}
	};
}

export namespace
	Meta::Proto
{
	template
		<	typename
				t_tProto
		,	typename
				t_tTrait
		>
	concept
		Literal
	=		t_tTrait
		::	template
			Evaluate
			<	t_tProto
			>
	;

	template
		<	typename
				t_tProto
		>
	concept
		All
	=	Literal
		<	t_tProto
		,	Trait::StaticConstraint
			<	Trait::Tautology
			>
		>
	;

	template
		<	typename
				t_tProto
		>
	concept
		None
	=	Literal
		<	t_tProto
		,	Trait::StaticConstraint
			<	Trait::Contradiction
			>
		>
	;

	template
		<	typename
				t_tProto
		,	bool
				t_bPolarity
		>
	concept
		Data
	=	Literal
		<	t_tProto
		,	Trait::StaticConstraint
			<	Trait::Data
				{	t_bPolarity
				}
			>
		>
	;

	template
		<	typename
				t_tProto
		,	bool
				t_bPolarity
		>
	concept
		Scalar_Ref_Void
	=	Literal
		<	t_tProto
		,	Trait::StaticConstraint
			<	Trait::Scalar_Ref_Void
				{	t_bPolarity
				}
			>
		>
	;

	template
		<	typename
				t_tProto
		,	bool
				t_bPolarity
		>
	concept
		Fund_Array
	=	Literal
		<	t_tProto
		,	Trait::StaticConstraint
			<	Trait::Fund_Array
				{	t_bPolarity
				}
			>
		>
	;

	template
		<	typename
				t_tProto
		,	bool
				t_bPolarity
		>
	concept
		Int_Enum_Class_LRef_NonQ
	=	Literal
		<	t_tProto
		,	Trait::StaticConstraint
			<	Trait::Int_Enum_Class_LRef_NonQ
				{	t_bPolarity
				}
			>
		>
	;

	template
		<	typename
				t_tProto
		,	bool
				t_bPolarity
		>
	concept
		Signed_Scoped_Ptr_Noex
	=	Literal
		<	t_tProto
		,	Trait::StaticConstraint
			<	Trait::Signed_Scoped_Ptr_Noex
				{	t_bPolarity
				}
			>
		>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Value
	=	Data<t_tProto, true>
	and	All<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Valueless
	=	Data<t_tProto, false>
	and	All<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		UArr_Fun
	=	Scalar_Ref_Void<t_tProto, false>
	and	Valueless<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Function
	=	Fund_Array<t_tProto, false>
	and	UArr_Fun<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		NonQualifiedFunction
	=	Int_Enum_Class_LRef_NonQ<t_tProto, true>
	and	Function<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		QualifiedFunction
	=	Int_Enum_Class_LRef_NonQ<t_tProto, false>
	and	Function<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Void_Ref
	=	Scalar_Ref_Void<t_tProto, true>
	and	Valueless<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Void
	=	Fund_Array<t_tProto, true>
	and	Void_Ref<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		UnboundedArray
	=	Fund_Array<t_tProto, true>
	and	UArr_Fun<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Reference
	=	Fund_Array<t_tProto, false>
	and	Void_Ref<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		LValueReference
	=	Int_Enum_Class_LRef_NonQ<t_tProto, true>
	and	Reference<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		RValueReference
	=	Int_Enum_Class_LRef_NonQ<t_tProto, false>
	and	Reference<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Scalar
	=	Scalar_Ref_Void<t_tProto, true>
	and	Value<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		FundamentalScalar
	=	Fund_Array<t_tProto, true>
	and	Scalar<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Float_NPtr
	=	Int_Enum_Class_LRef_NonQ<t_tProto, false>
	and	FundamentalScalar<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		FloatingPoint
	=	Signed_Scoped_Ptr_Noex<t_tProto, true>
	and	Float_NPtr<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		NullPointer
	=	Signed_Scoped_Ptr_Noex<t_tProto, false>
	and	Float_NPtr<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Integral
	=	Int_Enum_Class_LRef_NonQ<t_tProto, true>
	and	FundamentalScalar<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		CompoundScalar
	=	Fund_Array<t_tProto, false>
	and	Scalar<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Indirection
	=	Int_Enum_Class_LRef_NonQ<t_tProto, false>
	and	CompoundScalar<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Pointer
	=	Signed_Scoped_Ptr_Noex<t_tProto, true>
	and	Indirection<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		MemberPointer
	=	Signed_Scoped_Ptr_Noex<t_tProto, false>
	and	Indirection<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Enum
	=	Int_Enum_Class_LRef_NonQ<t_tProto, true>
	and	Scalar<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		CompoundObject
	=	Scalar_Ref_Void<t_tProto, false>
	and	Value<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		BoundedArray
	=	Fund_Array<t_tProto, true>
	and	CompoundObject<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Array
	=	Fund_Array<t_tProto, true>
	and	Scalar_Ref_Void<t_tProto, false>
	and	All<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Custom
	=	Fund_Array<t_tProto, false>
	and	CompoundObject<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Class
	=	Int_Enum_Class_LRef_NonQ<t_tProto, true>
	and	Custom<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Union
	=	Int_Enum_Class_LRef_NonQ<t_tProto, false>
	and	Custom<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Enum_Ptr_MPtr_Ref
	=	Fund_Array<t_tProto, false>
	and	Scalar_Ref_Void<t_tProto, true>
	and	All<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Scalar_Ref
	=	Scalar<t_tProto>
	or	Enum_Ptr_MPtr_Ref<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Enum_LRef
	=	Int_Enum_Class_LRef_NonQ<t_tProto, true>
	and	Enum_Ptr_MPtr_Ref<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Scalar_LRef
	=	Scalar<t_tProto>
	or	Enum_LRef<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		UArr_NonQ
	=	UnboundedArray<t_tProto>
	or	//	NonQualified Fuction
			Int_Enum_Class_LRef_NonQ<t_tProto, true>
		and	Scalar_Ref_Void<t_tProto, false>
		and	Data<t_tProto, false>
		and	All<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Scalar_Ref_NonQ_UArr
	=	Scalar_Ref<t_tProto>
	or	UArr_NonQ<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Argument
	=	Value<t_tProto>
	or	Reference<t_tProto>
	or	UArr_NonQ<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Enum_Ptr_MPtr_Custom
	=	Fund_Array<t_tProto, false>
	and	Value<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Returnable
	=		Scalar_Ref_Void<t_tProto, true>
		and	All<t_tProto>
	or	Enum_Ptr_MPtr_Custom<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		DataMember
	=	Enum_Ptr_MPtr_Ref<t_tProto>
	or	Value<t_tProto>
	;
}

export namespace
	Meta
{
	template
		<	typename
				t_tProto
		>
	concept
		ProtoNone
	=	Proto::None<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoAll
	=	Proto::All<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that have a size.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoValue
	=	Proto::Value<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are functions.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoFunction
	=	Proto::Function<t_tProto>
	or	Proto::None<t_tProto>
	;

	//	Types that are functions and can be referenced.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoNonQualifiedFunction
	=	Proto::NonQualifiedFunction<t_tProto>
	or	Proto::None<t_tProto>
	;

	//	Types that are functions and cannot be referenced.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoQualifiedFunction
	=	Proto::QualifiedFunction<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are void.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoVoid
	=	Proto::Void<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are unbounded arrays.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoUnboundedArray
	=	Proto::UnboundedArray<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are references.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoReference
	=	Proto::Reference<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are references.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoLValueReference
	=	Proto::LValueReference<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are references.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoRValueReference
	=	Proto::RValueReference<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are arithmetic.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoArithmetic
	=	Proto::Integral<t_tProto>
	or	Proto::FloatingPoint<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are floating points.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoFloatingPoint
	=	Proto::FloatingPoint<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are integrals.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoIntegral
	=	Proto::Integral<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are pointers.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoPointer
	=	Proto::Pointer<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are null pointers.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoNullPointer
	=	Proto::NullPointer<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are member pointers.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoMemberPointer
	=	Proto::MemberPointer<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are bounded arrays.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoBoundedArray
	=	Proto::BoundedArray<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are member pointers.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoEnum
	=	Proto::Enum<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that may have members.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoCustom
	=	Proto::Custom<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are classes, structs or lambdas.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoClass
	=	Proto::Class<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are unions.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoUnion
	=	Proto::Union<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are scalar with all traits that entails.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoScalar
	=	Proto::Scalar<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that can be passed to a function.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoArgument
	=	Proto::Argument<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that can be returned from a function.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoReturnable
	=	Proto::Returnable<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that may be used as a datamember.
	///	Namely these are sized objects and references.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoDataMember
	=	Proto::DataMember<t_tProto>
	or	Proto::None<t_tProto>
	;
}
