module;

#include <type_traits>

export module
	TypeTraits
;
export import Logic;

export namespace
	TypeTraits
{
	using Pack::Type;
	using Logic::Term;
	using Logic::Atom;

	template
		<	template
				<	typename
					...
				>
			typename
				t_t1Trait
		,	typename
			...	t_tpArgument
		>
	struct
		StandardTrait
	{
		template
			<	typename
					t_tType
			>
		auto constexpr
		(	operator()
		)	(	Type<t_tType>
			)
		->	bool
		{	return
				t_t1Trait
				<	t_tType
				,	t_tpArgument
					...
				>
			::	value
			;
		}
	};

	struct
		Fundamental
	:	StandardTrait
		<	std::is_fundamental
		>
	{};

	struct
		Compound
	:	StandardTrait
		<	std::is_compound
		>
	{};

	Term constexpr inline
		IsFundamental
	=	Atom<Fundamental>
	and	not
		Atom<Compound>
	;

	Term constexpr inline
		IsCompound
	=	Atom<Compound>
	and not
		Atom<Fundamental>
	;

	struct
		Object
	:	StandardTrait
		<	std::is_object
		>
	{};

	Term constexpr inline
		IsObject
	=	Atom<Object>
	;

	struct
		Reference
	:	StandardTrait
		<	std::is_reference
		>
	{};

	Term constexpr inline
		IsReference
	=	IsCompound
	and	Atom<Reference>
	;

	struct
		LValueReference
	:	StandardTrait
		<	std::is_lvalue_reference
		>
	{};

	Term constexpr inline
		IsLValueReference
	=	IsReference
	and	Atom<LValueReference>
	;

	struct
		RValueReference
	:	StandardTrait
		<	std::is_rvalue_reference
		>
	{};

	Term constexpr inline
		IsRValueReference
	=	IsReference
	and	Atom<RValueReference>
	;

	struct
		Scalar
	:	StandardTrait
		<	std::is_scalar
		>
	{};

	Term constexpr inline
		IsScalar
	=	IsObject
	and	Atom<Scalar>
	;

	struct
		Void
	:	StandardTrait
		<	std::is_void
		>
	{};

	Term constexpr inline
		IsVoid
	=	IsFundamental
	and	Atom<Void>
	;

	struct
		NullPointer
	:	StandardTrait
		<	std::is_null_pointer
		>
	{};

	Term constexpr inline
		IsNullPointer
	=	IsFundamental
	and	IsScalar
	and	Atom<NullPointer>
	;

	struct
		Arithmetic
	:	StandardTrait
		<	std::is_arithmetic
		>
	{};

	Term constexpr inline
		IsArithmetic
	=	IsFundamental
	and	/*IsScalar
	and*/	Atom<Arithmetic>
	;

	struct
		Integral
	:	StandardTrait
		<	std::is_integral
		>
	{};

	Term constexpr inline
		IsIntegral
	=	IsArithmetic
	and	Atom<Integral>
	;

	struct
		FloatingPoint
	:	StandardTrait
		<	std::is_floating_point
		>
	{};

	Term constexpr inline
		IsFloatingPoint
	=	IsArithmetic
	and	Atom<FloatingPoint>
	;

	struct
		Array
	:	StandardTrait
		<	std::is_array
		>
	{};

	Term constexpr inline
		IsArray
	=	IsCompound
	and	IsObject
	and	Atom<Array>
	;

	struct
		Enum
	:	StandardTrait
		<	std::is_enum
		>
	{};

	Term constexpr inline
		IsEnum
	=	IsCompound
	and	IsScalar
	and	Atom<Enum>
	;

	struct
		Union
	:	StandardTrait
		<	std::is_union
		>
	{};

	Term constexpr inline
		IsUnion
	=	IsCompound
	and	IsObject
	and	Atom<Union>
	;

	struct
		Class
	:	StandardTrait
		<	std::is_class
		>
	{};

	Term constexpr inline
		IsClass
	=	IsCompound
	and	IsObject
	and	Atom<Class>
	;

	struct
		Function
	:	StandardTrait
		<	std::is_function
		>
	{};

	Term constexpr inline
		IsFunction
	=	IsCompound
	and	Atom<Function>
	;

	struct
		Pointer
	:	StandardTrait
		<	std::is_pointer
		>
	{};

	Term constexpr inline
		IsPointer
	=	IsCompound
	and	IsScalar
	and	Atom<Pointer>
	;

	struct
		MemberPointer
	:	StandardTrait
		<	std::is_member_pointer
		>
	{};

	Term constexpr inline
		IsMemberPointer
	=	IsCompound
	and	IsScalar
	and	Atom<MemberPointer>
	;

	struct
		MemberObjectPointer
	:	StandardTrait
		<	std::is_member_object_pointer
		>
	{};

	Term constexpr inline
		IsMemberObjectPointer
	=	IsMemberPointer
	and	Atom<MemberObjectPointer>
	;

	struct
		MemberFunctionPointer
	:	StandardTrait
		<	std::is_member_function_pointer
		>
	{};

	Term constexpr inline
		IsMemberFunctionPointer
	=	IsMemberPointer
	and	Atom<MemberFunctionPointer>
	;
}

