module;

#include <type_traits>

export module
	Meta.TypeTraits
;
export import Meta.Type;

export namespace
	Meta
{
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

	struct
		Object
	:	StandardTrait
		<	std::is_object
		>
	{};

	struct
		Reference
	:	StandardTrait
		<	std::is_reference
		>
	{};

	struct
		LValueReference
	:	StandardTrait
		<	std::is_lvalue_reference
		>
	{};

	struct
		RValueReference
	:	StandardTrait
		<	std::is_rvalue_reference
		>
	{};
	struct
		Scalar
	:	StandardTrait
		<	std::is_scalar
		>
	{};

	struct
		Void
	:	StandardTrait
		<	std::is_void
		>
	{};

	struct
		NullPointer
	:	StandardTrait
		<	std::is_null_pointer
		>
	{};

	struct
		Arithmetic
	:	StandardTrait
		<	std::is_arithmetic
		>
	{};

	struct
		Integral
	:	StandardTrait
		<	std::is_integral
		>
	{};

	struct
		FloatingPoint
	:	StandardTrait
		<	std::is_floating_point
		>
	{};

	struct
		Array
	:	StandardTrait
		<	std::is_array
		>
	{};

	struct
		Enum
	:	StandardTrait
		<	std::is_enum
		>
	{};

	struct
		Union
	:	StandardTrait
		<	std::is_union
		>
	{};

	struct
		Class
	:	StandardTrait
		<	std::is_class
		>
	{};
	struct
		Function
	:	StandardTrait
		<	std::is_function
		>
	{};

	struct
		Pointer
	:	StandardTrait
		<	std::is_pointer
		>
	{};

	struct
		MemberPointer
	:	StandardTrait
		<	std::is_member_pointer
		>
	{};

	struct
		MemberObjectPointer
	:	StandardTrait
		<	std::is_member_object_pointer
		>
	{};

	struct
		MemberFunctionPointer
	:	StandardTrait
		<	std::is_member_function_pointer
		>
	{};
}

