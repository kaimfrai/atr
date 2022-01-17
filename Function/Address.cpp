export module Function.Address;

export import Function.Erase;
export import Function.Signature;
export import ID.Func;
export import Std.FunctionTraits;
export import Std.Concepts;

export import Std;

export namespace
	Function
{
	template
		<	typename
				t_tStaticDependency
		,	typename
			...	t_tpArgumentDependency
		>
	struct
		DependencyAddress
	{
		constexpr
		explicit
			DependencyAddress
			(	Meta::TypeToken
				<	t_tStaticDependency
				>
			,	Meta::TypeToken
				<	t_tpArgumentDependency
				>
				...
			)
		{}

		static constexpr
		auto
			Address
		=	&
			Signature
			<	t_tStaticDependency
			,	t_tpArgumentDependency
				...
			>
		;
	};

	template
		<	typename
				t_tStaticDependency
		,	typename
			...	t_tpArgumentDependency
		>
		DependencyAddress
		(	Meta::TypeToken
			<	t_tStaticDependency
			>
		,	Meta::TypeToken
			<	t_tpArgumentDependency
			>
			...
		)
	->	DependencyAddress
		<	t_tStaticDependency
		,	t_tpArgumentDependency
			...
		>
	;

	/// checks if the address is mapped
	template
		<	typename
				t_tFunctionName
		,	typename
			...	t_tpArgument
		>
	concept
		ValidAddress
	=	ID::FuncInstance
		<	t_tFunctionName
		>
	and	requires
			(	t_tFunctionName
					c_vFunctionName
			,	t_tpArgument
				...	c_vpArgument
			)
		{
			decltype(
				MapAddress
				(	c_vFunctionName
				,	c_vpArgument
					...
				)
			)::	Address
			;
		}
	;

	/// stores the address to the implementation of the function
	template
		<	ID::FuncInstance
				t_tFuncID
		,	typename
			...	t_tpArgument
		>
	constexpr inline
	auto
		Address
		()
	requires
		ValidAddress
		<	t_tFuncID
		,	t_tpArgument
			...
		>
	{
		return
			decltype(
				MapAddress
				(	t_tFuncID
					{}
				,	std::declval
					<	t_tpArgument
					>()
					...
				)
			)::	Address
		;
	}

	/// stores the address to the implementation of the function
	template
		<	ID::FuncInstance
				t_tFunctionName
		,	typename
			...	t_tpArgument
		>
	requires
		ValidAddress
		<	t_tFunctionName
		,	t_tpArgument
			...
		>
	constexpr
	bool
		AddressNoexcept
	=	Std::FunctionTraits
		<	Address
			<	t_tFunctionName
			,	t_tpArgument
				...
			>()
		>::	IsNoexcept()
	;

	/// invokes the function specified with the given FuncID
	template
		<	ID::FuncInstance
				t_tFuncID
		,	typename
			...	t_tpArgument
		>
	requires
		ValidAddress
		<	t_tFuncID
		,	t_tpArgument
			...
		>
	constexpr
	auto
		Invoke
		(	t_tpArgument
			&&
			...	i_rpArgument
		)
		noexcept(
			AddressNoexcept
			<	t_tFuncID
			,	t_tpArgument
				...
			>
		)
	->	decltype(auto)
	{	return
			std::invoke
			(	/// may be a pointer to member function, function pointer or function object
				Function::Address
				<	t_tFuncID
				,	t_tpArgument
					...
				>()
			,	ForwardErased
				(	Meta::Type
					<	t_tpArgument
					>
				,	i_rpArgument
				)
				...
			)
		;
	}

	/// prevents recursive instantiation of Address
	template
		<	auto
				t_fAddress
		>
	struct
		AddressProxy
	{
		constexpr
			AddressProxy
			()
		=	default
		;

		template
		<	ID::FuncInstance
				t_tFuncID
		,	typename
			...	t_tpArgument
		>
		constexpr
		explicit
			AddressProxy
			(	t_tFuncID
			,	Pack::Type
				<	t_tpArgument
					...
				>
			)
		{}

		[[nodiscard]]
		constexpr
		auto
			operator()
			()	const
		{	return
				t_fAddress
			;
		}
	};

	template
		<	ID::FuncInstance
				t_tFuncID
		,	typename
			...	t_tpArgument
		>
		AddressProxy
		(	t_tFuncID
		,	Pack::Type
			<	t_tpArgument
				...
			>
		)
	->	AddressProxy
		<	Function::Address
			<	t_tFuncID
			,	t_tpArgument
				...
			>()
		>
	;
}
