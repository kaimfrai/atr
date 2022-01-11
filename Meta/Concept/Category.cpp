export module Meta.Concept.Category;

export import Std;

export import Meta.Type;

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

	///	Types for which the size of their values does exceed the given template argument.
	///	This excludes sizeless types, in particluar unbound arrays which are otherwise
	///	objects and references for which sizeof yield the size of the referred type.
	///	This has a real semantic meaning, in particular for types used as members in a class.
	///	In combination with the following traits, all types categories are distinguished with
	///	as few traits as possible.
	template
		<	USize
				t_nObjectSize
		=	0uz
		>
	struct
		SizeGreater final
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
		{
			//	only object types which aren't unbound arrays
			if	constexpr
				(	not
					::std::is_object_v<t_tEntity>
				or	::std::is_unbounded_array_v<t_tEntity>
				)
				return not Polarity;
			else
			//	this is false for incomplete types
			if	constexpr
				(	requires{ sizeof(t_tEntity); }
				)
				return
				(	Polarity
				==	(	sizeof(t_tEntity)
					>	t_nObjectSize
					)
				);
			else
			{
				//	size will always be at least 1 byte for incomplete object types
				static_assert
				(	t_nObjectSize
				==	0uz
				,	"Attempted to check size of incomplete type!"
				);
				return Polarity;
			}
		}
	};

	///	Types which require a definition by the programmer.
	///	functions vs. sizeless non-functions
	///	classes, unions, enums vs. other objects
	///	Note that this has no real semantic value and only serves to distinguish types with as
	///	few traits as possible.
	struct
		Defined final
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
			==	(	::std::is_class_v<t_tEntity>
				or	::std::is_union_v<t_tEntity>
				or	::std::is_enum_v<t_tEntity>
				or	::std::is_function_v<t_tEntity>
				)
			;
		}
	};

	///	Types which cannot be used in the same way as an otherwise similar type. These are:
	///	scoped enums vs. unscoped enums (implicit conversion)
	///	unsigned integers vs. signed integers (negative numbers)
	///	lvalue references vs. rvalue references
	///	member pointers vs. pointers
	///	arrays vs. null pointers/void
	///	noexcept functions vs. non-noexcept functions
	///	Note that this has no real semantic value and only serves to distinguish types with as
	///	few traits as possible.
	struct
		Restricted final
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
			==	(	::std::is_scoped_enum_v<t_tEntity>
				or	::std::is_unsigned_v<t_tEntity>
				or	::std::is_lvalue_reference_v<t_tEntity>
				or	::std::is_member_pointer_v<t_tEntity>
				or	::std::is_array_v<t_tEntity>
				or	requires
					{	requires
							TypeToken<t_tEntity>
						::	FunctionQualifier(EQualifier::Noexcept)
						;
					}
				)
			;
		}
	};

	///	Types for which there exists implicitly another type that can be substituted for it.
	///	classes vs. unions (derived classes)
	///	pointers vs. nullpointers (arrays, nullpointer)
	///	integrals vs. floating points (unscoped enums)
	///	member pointers vs. bounded arrays (member pointers of base)
	///	references vs. sizeless non-references (value types)
	///	qualified functions vs. non-qualified functions (qualification of owner)
	///	Note that this has no real semantic value and only serves to distinguish types with as
	///	few traits as possible.
	struct
		Substitute final
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
			==	(	::std::is_class_v<t_tEntity>
				or	::std::is_pointer_v<t_tEntity>
				or	::std::is_integral_v<t_tEntity>
				or	::std::is_member_pointer_v<t_tEntity>
				or	not
					requires{ Type<t_tEntity*>;	}
				)
			;
		}
	};

	///	Types which behave like a number.
	///	These are enums, integrals and floating points.
	///	Note that this has no real semantic value and only serves to distinguish types with as
	///	few traits as possible.
	struct
		Numeric final
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
			==	(	::std::is_arithmetic_v<t_tEntity>
				or	::std::is_enum_v<t_tEntity>
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
		SizeGreater
	=	Literal
		<	t_tProto
		,	Trait::StaticConstraint
			<	Trait::SizeGreater<>
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
		Defined
	=	Literal
		<	t_tProto
		,	Trait::StaticConstraint
			<	Trait::Defined
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
		Restricted
	=	Literal
		<	t_tProto
		,	Trait::StaticConstraint
			<	Trait::Restricted
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
		Substitute
	=	Literal
		<	t_tProto
		,	Trait::StaticConstraint
			<	Trait::Substitute
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
		Numeric
	=	Literal
		<	t_tProto
		,	Trait::StaticConstraint
			<	Trait::Substitute
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
	=	SizeGreater<t_tProto, true>
	and	All<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Function
	=	SizeGreater<t_tProto, false>
	and	Defined<t_tProto, true>
	and	All<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		NonQualifiedFunction
	=	Substitute<t_tProto, false>
	and	Function<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Void
	=	SizeGreater<t_tProto, false>
	and	Defined<t_tProto, false>
	and	Restricted<t_tProto, false>
	and	Substitute<t_tProto, false>
	and	All<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		UnboundedArray
	=		SizeGreater<t_tProto, false>
	and	Defined<t_tProto, false>
	and	Restricted<t_tProto, true>
	and	Substitute<t_tProto, false>
	and	All<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Reference
	=	SizeGreater<t_tProto, false>
	and	Defined<t_tProto, false>
	and	Substitute<t_tProto, true>
	and	All<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		LValueReference
	=	Restricted<t_tProto, true>
	and	Reference<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		RValueReference
	=	Restricted<t_tProto, false>
	and	Reference<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Arithmetic
	=	Defined<t_tProto, false>
	and	Numeric<t_tProto, true>
	and	Value<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		FloatingPoint
	=	Substitute<t_tProto, false>
	and	Arithmetic<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Integral
	=	Substitute<t_tProto, true>
	and	Arithmetic<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Pointer
	=	Defined<t_tProto, false>
	and	Restricted<t_tProto, false>
	and	Substitute<t_tProto, true>
	and	Numeric<t_tProto, false>
	and	Value<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		NullPointer
	=	Defined<t_tProto, false>
	and	Restricted<t_tProto, false>
	and	Substitute<t_tProto, false>
	and	Numeric<t_tProto, false>
	and	Value<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		MemberPointer
	=	Defined<t_tProto, false>
	and	Restricted<t_tProto, true>
	and	Substitute<t_tProto, true>
	and	Numeric<t_tProto, false>
	and	Value<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		BoundedArray
	=	Defined<t_tProto, false>
	and	Restricted<t_tProto, true>
	and	Substitute<t_tProto, false>
	and	Numeric<t_tProto, false>
	and	Value<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Custom_Enum
	=	Defined<t_tProto, true>
	and	Value<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Enum
	=	Numeric<t_tProto, true>
	and	Custom_Enum<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Custom
	=	Numeric<t_tProto, false>
	and	Custom_Enum<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Class
	=	Substitute<t_tProto, true>
	and	Custom<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Union
	=	Substitute<t_tProto, false>
	and	Custom<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Enum_Int_Float
	=	Numeric<t_tProto, true>
	and	Value<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Float_NPtr_Ptr
	=	Defined<t_tProto, false>
	and	Restricted<t_tProto, false>
	and	Value<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Int_MPtr_Ptr_Ref
	=	Defined<t_tProto, false>
	and	Substitute<t_tProto, true>
	and	All<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		UInt_MPtr_LRef
	=	Restricted<t_tProto, true>
	and	Int_MPtr_Ptr_Ref<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Int_MPtr_Ptr
	=	SizeGreater<t_tProto, true>
	and	Int_MPtr_Ptr_Ref<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Scalar
	=	Enum_Int_Float<t_tProto>
	or	Int_MPtr_Ptr<t_tProto>
	or	Float_NPtr_Ptr<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Scalar_Ref
	=	Enum_Int_Float<t_tProto>
	or	Int_MPtr_Ptr_Ref<t_tProto>
	or	Float_NPtr_Ptr<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Scalar_LRef
	=	Enum_Int_Float<t_tProto>
	or	UInt_MPtr_LRef<t_tProto>
	or	Float_NPtr_Ptr<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		BArr_MPtr_RRef_UInt_UArr
	=	Defined<t_tProto, false>
	and	Restricted<t_tProto, true>
	and	All<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Float_LRef_NPtr_Ptr_Void
	=	Proto::Defined<t_tProto, false>
	and	Proto::Restricted<t_tProto, false>
	and	Proto::All<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Argument
	=	Value<t_tProto>
	or	NonQualifiedFunction<t_tProto>
	or	Int_MPtr_Ptr_Ref<t_tProto>
	or	BArr_MPtr_RRef_UInt_UArr<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		Returnable
	=	Float_LRef_NPtr_Ptr_Void<t_tProto>
	or	Int_MPtr_Ptr_Ref<t_tProto>
	or	Custom_Enum<t_tProto>
	or	Enum_Int_Float<t_tProto>
	;

	template
		<	typename
				t_tProto
		>
	concept
		DataMember
	=	Int_MPtr_Ptr_Ref<t_tProto>
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
	=		Proto::SizeGreater<t_tProto, false>
		and	Proto::Defined<t_tProto, false>
		and	Proto::Substitute<t_tProto, true>
		and	Proto::All<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are references.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoLValueReferenceReference
	=	Proto::LValueReference<t_tProto>
	or	Proto::None<t_tProto>
	;

	///	Types that are references.
	template
		<	typename
				t_tProto
		>
	concept
		ProtoRValueReferenceReference
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
	=	Proto::Arithmetic<t_tProto>
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
