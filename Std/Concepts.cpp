export module Std.Concepts;

export import Std.TemplateConcepts;
export import Std.TypeTraits;

export import Std;

export namespace
	Std
{
	template
		<	typename
				t_tFunction
		>
	concept
		Function
	=	std::is_function_v
		<	t_tFunction
		>
	;

	template
		<	typename
				t_tObject
		,	template
				<	typename
				>
			typename
				t_t1Transform
		>
	concept
		Object_Transform
	=	std::is_object_v
		<	t_t1Transform
			<	t_tObject
			>
		>
	;

	template
		<	typename
				t_tObject
		>
	concept
		Object
	=	Object_Transform
		<	t_tObject
		,	std::type_identity_t
		>
	;

	template
		<	typename
				t_tObject
		,	template
				<	typename
				>
			typename
				t_t1Transform
		>
	concept
		TriviallyCopyable_Transform
	=	Object_Transform
		<	t_tObject
		,	t_t1Transform
		>
	and	std::is_trivially_copyable_v
		<	t_tObject
		>
	;

	template
		<	typename
				t_tObject
		>
	concept
		TriviallyCopyable
	=	TriviallyCopyable_Transform
		<	t_tObject
		,	std::type_identity_t
		>
	;

	template
		<	typename
				t_tObject
		>
	concept
		ObjectOrReference
	=	Object_Transform
		<	t_tObject
		,	std::remove_reference_t
		>
	;

	template
		<	typename
				t_tObject
		>
	concept
		Reference
	=	(	std::is_lvalue_reference_v
			<	t_tObject
			>
		or	std::is_rvalue_reference_v
			<	t_tObject
			>
		)
	and	Object_Transform
		<	t_tObject
		,	std::remove_reference_t
		>
	;

	template
		<	typename
				t_tObject
		>
	concept
		CVObject
	=	(	std::is_const_v
			<	t_tObject
			>
		or	std::is_volatile_v
			<	t_tObject
			>
		)
	and	Object_Transform
		<	t_tObject
		,	std::remove_cv_t
		>
	;

	template
		<	typename
				t_tIntegral
		>
	concept
		Integral
	=	Object
		<	t_tIntegral
		>
	and	std::integral
		<	t_tIntegral
		>
	;

	template
		<	typename
				t_tIntegral
		>
	concept
		SignedIntegral
	=	Integral
		<	t_tIntegral
		>
	and	std::signed_integral
		<	t_tIntegral
		>
	;

	template
		<	typename
				t_tIntegral
		>
	concept
		UnsignedIntegral
	=	Integral
		<	t_tIntegral
		>
	and	std::unsigned_integral
		<	t_tIntegral
		>
	;

	template
		<	typename
				t_tFloatingPoint
		>
	concept
		FloatingPoint
	=	Object
		<	t_tFloatingPoint
		>
	and	std::floating_point
		<	t_tFloatingPoint
		>
	;

	template
		<	typename
				t_tArithmetic
		>
	concept
		Arithmetic
	=	Integral
		<	t_tArithmetic
		>
	or	FloatingPoint
		<	t_tArithmetic
		>
	;

	template
		<	typename
				t_tArray
		,	template
				<	typename
				>
			typename
				t_t1Transform
			=	std::type_identity_t
		>
	concept
		Array
	=	Object_Transform
		<	t_tArray
		,	t_t1Transform
		>
	and	std::is_array_v
		<	t_t1Transform
			<	t_tArray
			>
		>
	;

	template
		<	typename
				t_tArray
		,	template
				<	typename
				>
			typename
				t_t1Transform
		>
	concept
		BoundedArray_Transform
	=	Array
		<	t_tArray
		,	t_t1Transform
		>
	and	std::is_bounded_array_v
		<	t_t1Transform
			<	t_tArray
			>
		>
	;

	template
		<	typename
				t_tArray
		>
	concept
		BoundedArray
	=	BoundedArray_Transform
		<	t_tArray
		,	std::type_identity_t
		>
	;

	template
		<	typename
				t_tArray
		,	template
				<	typename
				>
			typename
				t_t1Transform
			=	std::type_identity_t
		>
	concept
		UnboundedArray
	=	Array
		<	t_tArray
		,	t_t1Transform
		>
	and	std::is_unbounded_array_v
		<	t_t1Transform
			<	t_tArray
			>
		>
	;

	template
		<	typename
				t_tClass
		,	template
				<	typename
				>
			typename
				t_t1Transform
		>
	concept
		Class_Transform
	=	Object_Transform
		<	t_tClass
		,	t_t1Transform
		>
	and	std::is_class_v
		<	t_t1Transform
			<	t_tClass
			>
		>
	;

	template
		<	typename
				t_tClass
		>
	concept
		Class
	=	Class_Transform
		<	t_tClass
		,	std::type_identity_t
		>
	;

	template
		<	typename
				t_tUnion
		>
	concept
		Union
	=	Object
		<	t_tUnion
		>
	and	std::is_union_v
		<	t_tUnion
		>
	;

	template
		<	typename
				t_tPointer
		>
	concept
		Pointer
	=	Object
		<	t_tPointer
		>
	and	std::is_pointer_v
		<	t_tPointer
		>
	;

	template
		<	typename
				t_tPointer
		>
	concept
		ObjectPointer
	=	Pointer
		<	t_tPointer
		>
	and	Object
		<	std::remove_pointer_t
			<	t_tPointer
			>
		>
	;

	template
		<	typename
				t_tPointer
		>
	concept
		FunctionPointer
	=	Pointer
		<	t_tPointer
		>
	and	Function
		<	std::remove_pointer_t
			<	t_tPointer
			>
		>
	;

	template
		<	typename
				t_tPointer
		>
	concept
		NullPointer
	=	std::is_same_v
		<	t_tPointer
		,	std::nullptr_t
		>
	;

	template
		<	typename
				t_tPointer
		>
	concept
		ObjectPointerOrNull
	=	NullPointer
		<	t_tPointer
		>
	or	ObjectPointer
		<	t_tPointer
		>
	;

	template
		<	typename
				t_tPointer
		>
	concept
		FunctionPointerOrNull
	=	NullPointer
		<	t_tPointer
		>
	or	FunctionPointer
		<	t_tPointer
		>
	;

	template
		<	typename
				t_tMemberPointer
		>
	concept
		MemberPointer
	=	Object
		<	t_tMemberPointer
		>
	and	std::is_member_pointer_v
		<	t_tMemberPointer
		>
	;

	template
		<	typename
				t_tConstructible
		,	typename
			...	t_tpArgument
		>
	concept
		ConstructibleFrom
	=	// constructible implies object
		Object
		<	t_tConstructible
		>
	and	std::constructible_from
		<	t_tConstructible
		,	t_tpArgument
			...
		>
	;

	template
		<	typename
				t_tAny
		,	typename
			...	t_tpArgument
		>
	concept
		NoexceptConstructibleFrom
	=	ConstructibleFrom
		<	t_tAny
		,	t_tpArgument
			...
		>
	and	std::is_nothrow_constructible_v
		<	t_tAny
		,	t_tpArgument
			...
		>
	;

	template
		<	typename
				t_tAny
		>
	concept
		DefaultConstructible
	=	ConstructibleFrom
		<	t_tAny
		>
	;

	template
		<	typename
				t_tAny
		>
	concept
		NoexceptDefaultConstructible
	=	DefaultConstructible
		<	t_tAny
		>
	and	NoexceptConstructibleFrom
		<	t_tAny
		>
	;

	template
		<	typename
				t_tAny
		,	typename
				t_tConvertTo
		>
	concept
		ConvertibleTo
	=	std::convertible_to
		<	t_tAny
		,	t_tConvertTo
		>
	;

	template
		<	typename
				t_tConvertible
		,	template
				<	typename
					...
				>
			typename
				t_t1ConvertTo
		>
	concept
		ConvertibleToTypePackInstance
	=	requires
			(	t_tConvertible
					c_vConvertible
			)
		{
			t_t1ConvertTo
			{	c_vConvertible
			};
		}
	;

	template
		<	typename
				t_tConvertible
		,	template
				<	auto
					...
				>
			typename
				t_t1ConvertTo
		>
	concept
		ConvertibleToValuePackInstance
	=	requires
			(	t_tConvertible
					c_vConvertible
			)
		{
			t_t1ConvertTo
			{	c_vConvertible
			};
		}
	;

	template
		<	typename
				t_tAny
		,	typename
				t_tOther
		,	template
				<	typename
				>
			typename
				t_t1Transform
		>
	concept
		SameAs_Transform
	=	std::same_as
		<	t_t1Transform
			<	t_tAny
			>
		,	t_t1Transform
			<	t_tOther
			>
		>
	;

	template
		<	typename
				t_tAny
		,	typename
				t_tOther
		>
	concept
		SameAs
	=	SameAs_Transform
		<	t_tAny
		,	t_tOther
		,	std::type_identity_t
		>
	;

	template
		<	typename
				t_tAny
		,	typename
			...	t_tpArgument
		>
	concept
		TypeInvocable
	=	std::invocable
		<	t_tAny
		,	t_tpArgument
			...
		>
	;

	template
		<	typename
				t_tAny
		,	typename
			...	t_tpArgument
		>
	concept
		TypeOverloaded
	=	(	...
		and TypeInvocable
			<	t_tAny
			,	t_tpArgument
			>
		)
	;

	template
		<	typename
				t_tAny
		,	typename
			...	t_tpArgument
		>
	concept
		NoexceptTypeInvocable
	=	TypeInvocable
		<	t_tAny
		,	t_tpArgument
			...
		>
	and	std::is_nothrow_invocable_v
		<	t_tAny
		,	t_tpArgument
			...
		>
	;

	template
		<	typename
				t_tAny
		,	typename
			...	t_tpArgument
		>
	concept
		NoexceptTypeOverloaded
	=	TypeOverloaded
		<	t_tAny
		,	t_tpArgument
			...
		>
	and	(	...
		and	NoexceptTypeInvocable
			<	t_tAny
			,	t_tpArgument
			>
		)
	;

	template
		<	typename
				t_tAny
		,	typename
			... t_tpArgument
		>
	concept
		TypePredicate
	=	std::predicate
		<	t_tAny
		,	t_tpArgument
			...
		>
	;

	template
		<	typename
				t_tAny
		,	auto
			...	t_vpArgument
		>
	concept
		ConstructibleLiteral
	=	ConstructibleFrom
		<	t_tAny
		,	decltype(
				t_vpArgument
			)
			...
		>
	and	CanBeInitializedBy
		<	t_tAny
		,	t_vpArgument
			...
		>
	;

	template
		<	typename
				t_tAny
		>
	concept
		DefaultConstructibleLiteral
	=	DefaultConstructible
		<	t_tAny
		>
	and	ConstructibleLiteral
		<	t_tAny
		>
	;

	template
		<	typename
				t_tAny
		,	template
				<	typename
				>
			typename
				t_t1Transform
		>
	concept
		Empty_Transform
	=	Class_Transform
		<	t_tAny
		,	t_t1Transform
		>
	and	std::is_empty_v
		<	t_t1Transform
			<	t_tAny
			>
		>
	;

	template
		<	typename
				t_tAny
		>
	concept
		Empty
	=	Empty_Transform
		<	t_tAny
		,	std::type_identity_t
		>
	;

	///	constructs a literal from the given arguments
	/// performs checks if the type is an constructible object
	template
		<	Object
				t_tObject
		,	auto
			...	t_tpInitializer
		>
	requires
		ConstructibleLiteral
		<	t_tObject
		,	t_tpInitializer
			...
		>
	constexpr
	Object auto
		Literal
	=	t_tObject
		{	t_tpInitializer
			...
		}
	;

	/// maps all types to false. useful in a static_assert
	template
		<	typename
			...
		>
	concept
		Never
		=	false
	;
}

///	remove implicit comma operator from overload resolution
/// empty objects should never be silently discarded
constexpr
auto
	operator,
	(	Std::Empty auto
	,	Std::Empty auto
	)
=	delete
;
