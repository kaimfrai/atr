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
				t_tArgument
		>
	struct
		Argument
	{
		auto constexpr
		(	operator()
		)	()
		->	Argument<t_tArgument>
		{	return *this;	}
	};

	template
		<	typename
				t_tArgument
		>
	struct
		Argument
		<	t_tArgument&
		>
	{
		Argument<t_tArgument>
			Argument
		{};

		auto constexpr
		(	operator()
		)	()
		->	::ATR::Argument<t_tArgument>&
		{	return Argument;	}
	};

	template
		<	typename
				t_tArgument
		>
	struct
		Argument
		<	t_tArgument const&
		>
	{
		Argument<t_tArgument>
			Argument
		{};

		auto constexpr
		(	operator()
		)	()	const
		->	::ATR::Argument<t_tArgument> const&
		{	return Argument;	}
	};

	template
		<	typename
				t_tArgument
		>
	struct
		Argument
		<	t_tArgument&&
		>
	{
		Argument<t_tArgument>
			Argument
		{};

		auto constexpr
		(	operator()
		)	()
		->	::ATR::Argument<t_tArgument>&&
		{	return ::std::move(Argument);	}
	};

	template
		<	typename
				t_tArgument
		>
	struct
		Argument
		<	t_tArgument const&&
		>
	{
		Argument<t_tArgument>
			Argument
		{};

		auto constexpr
		(	operator()
		)	()	const
		->	::ATR::Argument<t_tArgument> const&&
		{	return ::std::move(Argument);	}
	};

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
			,	Argument<t_tpArgument>
				...	c_vpArgument
			)
		{
			MapAddress
			(	c_vFunctionName
			,	c_vpArgument()
				...
			);
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
		MapAddress
		(	t_tFuncID
			{}
		,	Argument<t_tpArgument>{}()
			...
		);
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
