export module ATR:Instance;

export import :ID;
export import :Layout;
export import :Address;

export namespace
	ATR
{
	template
		<	decltype(auto)
			...	t_vpName
		>
	struct
		Instance
	:	CreateLayoutType
		<	ID<t_vpName...>
		>
	{
		static auto constexpr
		&	TypeName
		=	ID<t_vpName...>
		::	RawArray
		;

		using
			LayoutType
		=	CreateLayoutType
			<	ID<t_vpName...>
			>
		;

		using LayoutType::operator[];

		template
			<	ProtoID
					t_tFunctionName
			,	typename
				...	t_tpArgument
			>
		requires
			ProtoAddress
			<	t_tFunctionName
			,	Instance&
			,	t_tpArgument
				...
			>
		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	t_tFunctionName
			,	t_tpArgument
				&&
				...	i_rpArgument
			)	&
			noexcept
			(	AddressNoexcept
				<	t_tFunctionName
				,	Instance&
				,	t_tpArgument
					...
				>
			)
		->	decltype(auto)
		{	return
			Address
			<	t_tFunctionName
			,	Instance&
			,	t_tpArgument
				...
			>(	ForwardErased
				(	Meta::TokenizeEntity<LayoutType&>{}
				,	*this
				)
			,	ForwardErased
				(	Meta::TokenizeEntity<t_tpArgument>{}
				,	i_rpArgument
				)
				...
			);
		}

		template
			<	ProtoID
					t_tFunctionName
			,	typename
				...	t_tpArgument
			>
		requires
			ProtoAddress
			<	t_tFunctionName
			,	Instance const&
			,	t_tpArgument
				...
			>
		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	t_tFunctionName
			,	t_tpArgument
				&&
				...	i_rpArgument
			)	const&
			noexcept
			(	AddressNoexcept
				<	t_tFunctionName
				,	Instance const&
				,	t_tpArgument
					...
				>
			)
		->	decltype(auto)
		{	return
			Address
			<	t_tFunctionName
			,	Instance const&
			,	t_tpArgument
				...
			>(	ForwardErased
				(	Meta::TokenizeEntity<Instance const&>{}
				,	*this
				)
			,	ForwardErased
				(	Meta::TokenizeEntity<t_tpArgument>{}
				,	i_rpArgument
				)
				...
			);
		}

		/// call non-const member functions
		template
			<	ProtoID
					t_tFunctionName
			,	typename
				...	t_tpArgument
			>
		requires
			ProtoAddress
			<	t_tFunctionName
			,	Instance&&
			,	t_tpArgument
				...
			>
		[[nodiscard]]
		auto constexpr
		(	operator()
		)	(	t_tFunctionName
			,	t_tpArgument
				&&
				...	i_rpArgument
			)	&&
			noexcept
			(	AddressNoexcept
				<	t_tFunctionName
				,	Instance&&
				,	t_tpArgument
					...
				>
			)
		->	decltype(auto)
		{	return
			Address
			<	t_tFunctionName
			,	Instance const&
			,	t_tpArgument
				...
			>(	ForwardErased
				(	Meta::TokenizeEntity<Instance&&>{}
				,	*this
				)
			,	ForwardErased
				(	Meta::TokenizeEntity<t_tpArgument>{}
				,	i_rpArgument
				)
				...
			);
		}
	};

	template
		<	StringLiteral
				t_vTypeID
		>
	using
		Type
	=	ID_T
		<	t_vTypeID
		,	::ATR::Instance
		>
	;
}
