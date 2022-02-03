export module ATR.Address;

export import ATR.Erase;
export import ATR.Signature;
export import ATR.ID;

export import Std;
export import Meta.Transform;
export import Meta.Type.Function;
export import Meta.TupleList;

export namespace
	ATR
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
		explicit constexpr
		(	DependencyAddress
		)	(	Meta::TypeToken
				<	t_tStaticDependency
				>
			,	Meta::TypeToken
				<	t_tpArgumentDependency
				>
				...
			)
		{}

		static auto constexpr
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
	(	DependencyAddress
	)	(	Meta::TypeToken
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
	=	ProtoID
		<	t_tFunctionName
		>
	and	requires
			(	t_tFunctionName
					c_vFunctionName
			,	t_tpArgument
				...	c_vpArgument
			)
		{
				decltype
				(	MapAddress
					(	c_vFunctionName
					,	c_vpArgument
						...
					)
				)
			::	Address
			;
		}
	;

	/// stores the address to the implementation of the function
	template
		<	ProtoID
				t_tFuncID
		,	typename
			...	t_tpArgument
		>
	auto constexpr
	(	Address
	)	()
	requires
		ValidAddress
		<	t_tFuncID
		,	t_tpArgument
			...
		>
	{	return
			decltype
			(	MapAddress
				(	t_tFuncID
					{}
				,	::std::declval
					<	t_tpArgument
					>()
					...
				)
			)
		::	Address
		;
	}

	/// stores the address to the implementation of the function
	template
		<	ProtoID
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
	bool constexpr inline
		AddressNoexcept
	=	IsNoexcept
		(	Meta::RemovePointer
			(	Meta::Type
				<	decltype
					(	Address
						<	t_tFunctionName
						,	t_tpArgument
							...
						>()
					)
				>
			)
		)
	;

	/// invokes the function specified with the given FuncID
	template
		<	ProtoID
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
	auto constexpr
	(	Invoke
	)	(	t_tpArgument
			&&
			...	i_rpArgument
		)
		noexcept
		(	AddressNoexcept
			<	t_tFuncID
			,	t_tpArgument
				...
			>
		)
	->	decltype(auto)
	{	return
		::std::invoke
		(	/// may be a pointer to member function, function pointer or function object
			Address
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
		);
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
		(	AddressProxy
		)	()
		=	default;

		template
			<	ProtoID
					t_tFuncID
			,	typename
				...	t_tpArgument
			>
		explicit constexpr
		(	AddressProxy
		)	(	t_tFuncID
			,	Meta::TypePack
				<	t_tpArgument
					...
				>
			)
		{}

		template
			<	ProtoID
					t_tFuncID
			,	typename
					t_tOwner
			,	typename
				...	t_tpArgument
			>
		explicit constexpr
		(	AddressProxy
		)	(	t_tFuncID
			,	Meta::TypeToken<t_tOwner>
			,	Meta::TypePack
				<	t_tpArgument
					...
				>
			)
		{}

		template
			<	typename
				...	t_tpArgument
			>
		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	t_tpArgument
				&&
				...	i_rpArgument
			)	const
		->	decltype(auto)
		{	return
			t_fAddress
			(	::std::forward
				<	t_tpArgument
				>(	i_rpArgument
				)
				...
			);
		}
	};

	template
		<	ProtoID
				t_tFuncID
		,	typename
			...	t_tpArgument
		>
	(	AddressProxy
	)	(	t_tFuncID
		,	Meta::TypePack
			<	t_tpArgument
				...
			>
		)
	->	AddressProxy
		<	Address
			<	t_tFuncID
			,	t_tpArgument
				...
			>()
		>
	;

	template
		<	ProtoID
				t_tFuncID
		,	typename
				t_tOwner
		,	typename
			...	t_tpArgument
		>
	(	AddressProxy
	)	(	t_tFuncID
		,	Meta::TypeToken<t_tOwner>
		,	Meta::TypePack
			<	t_tpArgument
				...
			>
		)
	->	AddressProxy
		<	Address
			<	t_tFuncID
			,	t_tOwner
			,	t_tpArgument
				...
			>()
		>
	;
}
