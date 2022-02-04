export module ATR.Instance;

export import ATR.ID;
export import ATR.Layout;
export import ATR.Address;

export namespace
	ATR
{
	template
		<	ProtoID
				t_tTypeID
		>
	struct
		Instance
	:	CreateLayoutType
		<	t_tTypeID
		>
	{
		static auto constexpr
		&	TypeName
		=	t_tTypeID
		::	RawArray
		;

		using
			LayoutType
		=	CreateLayoutType
			<	t_tTypeID
			>
		;

		using LayoutType::operator[];

		/// call const member functions
		template
			<	ProtoID
					t_tFunctionName
			,	typename
				...	t_tpArgument
			>
		requires
			ValidAddress
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
			)	const
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
			Invoke
			<	t_tFunctionName
			>(	*this
			,	static_cast
				<	t_tpArgument&&
				>(	i_rpArgument
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
			ValidAddress
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
			)
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
			Invoke
			<	t_tFunctionName
			>(	*this
			,	static_cast
				<	t_tpArgument&&
				>(	i_rpArgument
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
	=	Instance
		<	ID_T
			<	t_vTypeID
			>
		>
	;

	template
		<	typename
				t_tObject
		,	StringLiteral
				t_vMemberName
		>
	concept
		HasDataMember
	=	MemberAccessIDOf
		<	ID_T<t_vMemberName>
		,	typename
			t_tObject
		::	LayoutType
		>
	;
}
