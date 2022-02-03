export module ATR.Instance;

export import ATR.ID;
export import ATR.LayoutInfo;
export import ATR.MemberOffset;
export import ATR.Address;
export import Std.QualifierTemplate;

export import Std;

export namespace
	ATR
{
	template
		<	ProtoID
				t_tTypeID
		>
	struct
		Instance
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

		LayoutType
			Layout
		;

		/// access const member of the layout
		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ATR::MemberAccessIDOf<LayoutType const> auto
					i_vName
			)	const
			noexcept
		->	decltype(auto)
		{	return
			Layout
			[	i_vName
			];
		}

		/// access non-const member of the layout
		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ATR::MemberAccessIDOf<LayoutType> auto
					i_vName
			)
			noexcept
		->	decltype(auto)
		{	return
			Layout
			[	i_vName
			];
		}

		template
			<	StringLiteral
					t_vMemberName
			>
		requires
			ATR::MemberAccessIDOf
			<	ID_T<t_vMemberName>
			,	LayoutType const
			>
		[[nodiscard]]
		auto constexpr
		(	Get
		)	()	const
			noexcept
		->	decltype(auto)
		{	return
			Layout
			[	ID_V<t_vMemberName>
			];
		}

		template
			<	StringLiteral
					t_vMemberName
			>
		requires
			ATR::MemberAccessIDOf
			<	ID_T<t_vMemberName>
			,	LayoutType const
			>
		[[nodiscard]]
		auto constexpr
		(	Get
		)	()
			noexcept
		->	decltype(auto)
		{	return
			Layout
			[	ID_V<t_vMemberName>
			];
		}

		template
			<	StringLiteral
					t_vMemberName
			,	typename
					t_tValue
			>
		requires
			ATR::MemberAccessIDOf
			<	ID_T<t_vMemberName>
			,	LayoutType
			>
		auto constexpr
		(	Set
		)	(	t_tValue
				&&	i_rValue
			)
			noexcept
		->	void
		{	(	Get<t_vMemberName>()
			=	::std::forward
				<	t_tValue
				>(	i_rValue
				)
			);
		}

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
			,	::std::forward
				<	t_tpArgument
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
			,	::std::forward
				<	t_tpArgument
				>(	i_rpArgument
				)
				...
			);
		}

		/// call const member functions
		template
			<	StringLiteral
					t_vFuncID
			,	typename
				...	t_tpArgument
			>
		requires
			ValidAddress
			<	ID_T<t_vFuncID>
			,	Instance const&
			,	t_tpArgument
				...
			>
		[[nodiscard]]
		auto constexpr
		(	Call
		)	(	t_tpArgument
				&&
				...	i_rpArgument
			)	const
			noexcept
			(	AddressNoexcept
				<	ID_T<t_vFuncID>
				,	Instance const&
				,	t_tpArgument
					...
				>
			)
		->	decltype(auto)
		{	return
			Invoke
			<	ID_T<t_vFuncID>
			>(	*this
			,	::std::forward
				<	t_tpArgument
				>(	i_rpArgument
				)
				...
			);
		}

		/// call non-const member functions
		template
			<	StringLiteral
					t_vFuncID
			,	typename
				...	t_tpArgument
			>
		requires
			ValidAddress
			<	ID_T<t_vFuncID>
			,	Instance&
			,	t_tpArgument
				...
			>
		[[nodiscard]]
		auto constexpr
		(	Call
		)	(	t_tpArgument
				&&
				...	i_rpArgument
			)
			noexcept
			(	AddressNoexcept
				<	ID_T<t_vFuncID>
				,	Instance&
				,	t_tpArgument
					...
				>
			)
		->	decltype(auto)
		{	return
			Invoke
			<	ID_T<t_vFuncID>
			>(	*this
			,	::std::forward
				<	t_tpArgument
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

	/// layout offsets for Archetypes
	template
		<	Std::TypePackInstanceOf<Instance>
				t_tArchetype
		>
	auto constexpr
		OffsetOf
		(	t_tArchetype&
		,	ProtoID auto
				i_vName
		)
	{	return
		ATR::OffsetOf
		<	/// preserve constness
			Std::CVQualifier
			<	t_tArchetype
			>::	template
				Add
		>(	UnderlyingLayout
			<	t_tArchetype
			>
		,	i_vName
		);
	}

	template
		<	Std::TypePackInstanceOf<Instance>
				t_tArchetype
		>
	auto constexpr
		OffsetOf
		(	t_tArchetype const&
		,	ProtoID auto
				i_vName
		)
	{	return
		ATR::OffsetOf
		<	/// preserve constness
			Std::CVQualifier
			<	t_tArchetype const
			>::	template
				Add
		>(	UnderlyingLayout
			<	t_tArchetype
			>
		,	i_vName
		);
	}

	template
		<	typename
				t_tObject
		,	StringLiteral
				t_vMemberName
		>
	concept
		HasDataMember
	=	ATR::MemberAccessIDOf
		<	ID_T<t_vMemberName>
		,	typename
			t_tObject
		::	LayoutType
		>
	;
}
