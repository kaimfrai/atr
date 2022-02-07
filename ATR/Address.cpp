export module ATR.Address;

export import ATR.Erase;
export import ATR.Signature;
export import ATR.ID;

export import Std;
export import Meta.TupleList;

namespace
	ATR
{
	template
		<	typename
				t_tArgument
		>
	struct
		Argument final
	{
		auto constexpr
		(	operator()
		)	()
		->	Meta::TypeToken<t_tArgument>
		{	return Meta::Type<t_tArgument>;	}
	};

	template
		<	typename
				t_tArgument
		>
	struct
		Argument
		<	t_tArgument&
		>	final
	{
		Meta::TypeToken<t_tArgument>
			Argument
		{};

		auto constexpr
		(	operator()
		)	()
		->	Meta::TypeToken<t_tArgument>&
		{	return Argument;	}
	};

	template
		<	typename
				t_tArgument
		>
	struct
		Argument
		<	t_tArgument const&
		>	final
	{
		Meta::TypeToken<t_tArgument>
			Argument
		{};

		auto constexpr
		(	operator()
		)	()	const
		->	Meta::TypeToken<t_tArgument> const&
		{	return Argument;	}
	};

	template
		<	typename
				t_tArgument
		>
	struct
		Argument
		<	t_tArgument&&
		>	final
	{
		Meta::TypeToken<t_tArgument>
			Argument
		{};

		auto constexpr
		(	operator()
		)	()
		->	Meta::TypeToken<t_tArgument>&&
		{	return ::std::move(Argument);	}
	};

	template
		<	typename
				t_tArgument
		>
	struct
		Argument
		<	t_tArgument const&&
		>	final
	{
		Meta::TypeToken<t_tArgument>
			Argument
		{};

		auto constexpr
		(	operator()
		)	()	const
		->	Meta::TypeToken<t_tArgument> const&&
		{	return ::std::move(Argument);	}
	};
}

export namespace
	ATR
{
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

	template
		<	ProtoID
				t_tFuncID
		,	typename
			...	t_tpArgument
		>
	auto constexpr inline
	*	Address
	=	MapAddress
		(	t_tFuncID{}
		,	Argument<t_tpArgument>{}()
			...
		)
	;

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
	=	::std::is_nothrow_invocable_v
		<	decltype
			(	MapAddress
				(	t_tFunctionName{}
				,	Argument<t_tpArgument>{}()
					...
				)
			)
		,	ErasedType<t_tpArgument>
			...
		>
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
		(	Address
			<	t_tFuncID
			,	t_tpArgument
				...
			>
		,	ForwardErased
			(	Meta::Type<t_tpArgument>
			,	i_rpArgument
			)
			...
		);
	}
}
