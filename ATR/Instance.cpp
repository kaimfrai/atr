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

		template
			<	ProtoID
					t_tFunctionName
			,	typename
				...	t_tpArgument
			>
		requires
			ValidAddress
			<	t_tFunctionName
			,	LayoutType&
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
				,	LayoutType&
				,	t_tpArgument
					...
				>
			)
		->	decltype(auto)
		{	return
			Address
			<	t_tFunctionName
			,	LayoutType&
			,	t_tpArgument
				...
			>(	ForwardErased
				(	Meta::Type<LayoutType&>
				,	*this
				)
			,	ForwardErased
				(	Meta::Type<t_tpArgument>
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
			,	LayoutType const&
			,	t_tpArgument
				...
			>(	ForwardErased
				(	Meta::Type<LayoutType const&>
				,	*this
				)
			,	ForwardErased
				(	Meta::Type<t_tpArgument>
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
			ValidAddress
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
			,	LayoutType&&
			,	t_tpArgument
				...
			>(	ForwardErased
				(	Meta::Type<LayoutType&&>
				,	*this
				)
			,	ForwardErased
				(	Meta::Type<t_tpArgument>
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
	=	Instance
		<	ID_T
			<	t_vTypeID
			>
		>
	;

	template
		<	typename
				t_tObject
		,	typename
				t_tMemberName
		>
	concept
		HasDataMember
	=	MemberAccessIDOf
		<	t_tMemberName
		,	typename
			t_tObject
		::	LayoutType
		>
	;
}
