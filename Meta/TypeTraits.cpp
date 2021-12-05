export module Meta.TypeTraits;
export import Std.TypeTraits;
export import Meta.Type;

export namespace
	Meta
{
	struct
		NeverTrait
	{
		template
			<	typename
					t_tType
			>
		auto constexpr
		(	operator()
		)	(	Type<t_tType>
			)	const
		->	bool
		{	return false;	}
	};

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
			)	const
		->	bool
		{	return
			t_t1Trait
			<	t_tType
			,	t_tpArgument
				...
			>{};
		}
	};

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
		ReverseStandardTrait
	{
		template
			<	typename
					t_tType
			>
		auto constexpr
		(	operator()
		)	(	Type<t_tType>
			)	const
		->	bool
		{	return
			t_t1Trait
			<	t_tpArgument
				...
			,	t_tType
			>{};
		}
	};

	struct
		FundamentalTrait
	:	StandardTrait
		<	std::is_fundamental
		>
	{};

	struct
		CompoundTrait
	:	StandardTrait
		<	std::is_compound
		>
	{};

	struct
		ObjectTrait
	:	StandardTrait
		<	std::is_object
		>
	{};

	struct
		ReferenceTrait
	:	StandardTrait
		<	std::is_reference
		>
	{};

	struct
		LValueReferenceTrait
	:	StandardTrait
		<	std::is_lvalue_reference
		>
	{};

	struct
		RValueReferenceTrait
	:	StandardTrait
		<	std::is_rvalue_reference
		>
	{};

	struct
		ScalarTrait
	:	StandardTrait
		<	std::is_scalar
		>
	{};

	struct
		VoidTrait
	:	StandardTrait
		<	std::is_void
		>
	{};

	struct
		NullPointerTrait
	:	StandardTrait
		<	std::is_null_pointer
		>
	{};

	struct
		ArithmeticTrait
	:	StandardTrait
		<	std::is_arithmetic
		>
	{};

	struct
		IntegralTrait
	:	StandardTrait
		<	std::is_integral
		>
	{};

	struct
		FloatingPointTrait
	:	StandardTrait
		<	std::is_floating_point
		>
	{};

	struct
		ArrayTrait
	:	StandardTrait
		<	std::is_array
		>
	{};

	struct
		EnumTrait
	:	StandardTrait
		<	std::is_enum
		>
	{};

	struct
		UnionTrait
	:	StandardTrait
		<	std::is_union
		>
	{};

	struct
		ClassTrait
	:	StandardTrait
		<	std::is_class
		>
	{};

	struct
		FunctionTrait
	:	StandardTrait
		<	std::is_function
		>
	{};

	struct
		PointerTrait
	:	StandardTrait
		<	std::is_pointer
		>
	{};

	struct
		MemberPointerTrait
	:	StandardTrait
		<	std::is_member_pointer
		>
	{};

	struct
		MemberObjectPointerTrait
	:	StandardTrait
		<	std::is_member_object_pointer
		>
	{};

	struct
		MemberFunctionPointerTrait
	:	StandardTrait
		<	std::is_member_function_pointer
		>
	{};

	template
		<	typename
				t_tBase
		>
	struct
		DerivedFromTrait
	:	ReverseStandardTrait
		<	std::is_base_of
		,	t_tBase
		>
	{};

	template
		<	template
				<	typename
					...
				>
			typename
				t_t1Pack
		>
	struct
		TypePackTrait
	:	NeverTrait
	{
		using NeverTrait::operator();

		template
			<	typename
				...	t_tpArgument
			>
		auto constexpr
		(	operator()
		)	(	Type
				<	t_t1Pack
					<	t_tpArgument
						...
					>
				>
			)	const
		->	bool
		{	return true;	}
	};

	template
		<	template
				<	auto
					...
				>
			typename
				t_t1Pack
		>
	struct
		ValuePackTrait
	:	NeverTrait
	{
		using NeverTrait::operator();

		template
			<	auto
				...	t_vpArgument
			>
		auto constexpr
		(	operator()
		)	(	Type
				<	t_t1Pack
					<	t_vpArgument
						...
					>
				>
			)	const
		->	bool
		{	return true;	}
	};

	template
		<	template
				<	auto
				,	typename
				>
			typename
				t_t1Pair
		>
	struct
		ValueTypePairTrait
	:	NeverTrait
	{
		using NeverTrait::operator();

		template
			<	auto
					t_vFirst
			,	typename
					t_tSecond
			>
		auto constexpr
		(	operator()
		)	(	Type
				<	t_t1Pair
					<	t_vFirst
					,	t_tSecond
					>
				>
			)	const
		->	bool
		{	return true;	}
	};

	template
		<	typename
				t_tProto
		,	auto
				t_fPredicate
		>
	concept
		ProtoPredicate
	=	t_fPredicate
		(	Type<t_tProto>{}
		)
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoVoid
	=	ProtoPredicate
		<	t_tProto
		,	VoidTrait{}
		>
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoClass
	=	ProtoPredicate
		<	t_tProto
		,	ClassTrait{}
		>
	;

	template
		<	typename
				t_tProto
		,	typename
				t_tBase
		>
	concept
		ProtoDerivedFrom
	=	ProtoClass
		<	t_tProto
		>
	and	ProtoPredicate
		<	t_tProto
		,	DerivedFromTrait<t_tBase>{}
		>
	;

	template
		<	typename
				t_tProto
		,	template
				<	auto
					...
				>
			typename
				t_t1Pack
		>
	concept
		ProtoValuePack
	=	ProtoPredicate
		<	t_tProto
		,	ValuePackTrait
			<	t_t1Pack
			>{}
		>
	;

	template
		<	typename
				t_tProto
		,	template
				<	auto
				,	typename
				>
			typename
				t_t1Pair
		>
	concept
		ProtoValueTypePair
	=	ProtoPredicate
		<	t_tProto
		,	ValueTypePairTrait
			<	t_t1Pair
			>{}
		>
	;
}

