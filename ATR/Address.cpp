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
				t_tLayout
		>
	auto constexpr
	(	LayoutType
	)	(	Meta::TypeToken<t_tLayout>
		)
	->	Meta::TypeToken<typename t_tLayout::LayoutType>
	{	return {};	}

	template
		<	typename
				t_tLayout
		>
	auto constexpr
	(	LayoutType
	)	(	Meta::TypeToken<t_tLayout const>
		)
	->	Meta::TypeToken<typename t_tLayout::LayoutType const>
	{	return {};	}

	template
		<	typename
				t_tLayout
		>
	auto constexpr
	(	LayoutType
	)	(	Meta::TypeToken<t_tLayout&>
		)
	->	Meta::TypeToken<typename t_tLayout::LayoutType&>
	{	return {};	}

	template
		<	typename
				t_tLayout
		>
	auto constexpr
	(	LayoutType
	)	(	Meta::TypeToken<t_tLayout const&>
		)
	->	Meta::TypeToken<typename t_tLayout::LayoutType const&>
	{	return {};	}

	template
		<	typename
				t_tLayout
		>
	auto constexpr
	(	LayoutType
	)	(	Meta::TypeToken<t_tLayout&&>
		)
	->	Meta::TypeToken<typename t_tLayout::LayoutType&&>
	{	return {};	}

	template
		<	typename
				t_tLayout
		>
	auto constexpr
	(	LayoutType
	)	(	Meta::TypeToken<t_tLayout const&&>
		)
	->	Meta::TypeToken<typename t_tLayout::LayoutType const&&>
	{	return {};	}

	template
		<	typename
				t_tArgument
		>
	struct
		Argument final
	{
		explicit constexpr
		(	Argument
		)	(	Meta::TypeToken<t_tArgument>
			)
		{}

		auto constexpr
		(	operator()
		)	()	&&
			noexcept
		->	t_tArgument
		{	return t_tArgument{};	}
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
		t_tArgument
			m_vArgument
		{};

		explicit constexpr
		(	Argument
		)	(	Meta::TypeToken<t_tArgument&>
			)
		{}

		auto constexpr
		(	operator()
		)	()	&&
			noexcept
		->	t_tArgument&
		{	return m_vArgument;	}
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
		t_tArgument
			m_vArgument
		{};

		explicit constexpr
		(	Argument
		)	(	Meta::TypeToken<t_tArgument const&>
			)
		{}

		auto constexpr
		(	operator()
		)	()	const&&
			noexcept
		->	t_tArgument const&
		{	return m_vArgument;	}
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
		t_tArgument
			m_vArgument
		;

		explicit constexpr
		(	Argument
		)	(	Meta::TypeToken<t_tArgument&&>
			)
		{}

		auto constexpr
		(	operator()
		)	()	&&
		->	t_tArgument&&
		{	return ::std::move(m_vArgument);	}
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
		t_tArgument
			m_vArgument
		{};


		explicit constexpr
		(	Argument
		)	(	Meta::TypeToken<t_tArgument const&&>
			)
		{}

		auto constexpr
		(	operator()
		)	()	const&&
			noexcept
		->	t_tArgument const&&
		{	return ::std::move(m_vArgument);	}
	};

	template
		<	typename
				t_tArgument
		>
	(	Argument
	)	(	Meta::TypeToken<t_tArgument>
		)
	->	Argument
		<	t_tArgument
		>
	;
}

export namespace
	ATR
{
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
		,	Argument
			{	LayoutType
				(	Meta::Type<t_tpArgument>
				)
			}()
			...
		)
	;

	/// checks if the address is mapped
	template
		<	typename
				t_tFunctionName
		,	typename
			...	t_tpArgument
		>
	concept
		ProtoAddress
	=	(	Address<t_tFunctionName, t_tpArgument...>
		!=	nullptr
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
		ProtoAddress
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
				,	::std::declval<t_tpArgument>()
					...
				)
			)
		,	ErasedType<t_tpArgument>
			...
		>
	;
}
