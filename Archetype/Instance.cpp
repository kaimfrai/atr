export module Archetype.Instance;

export import ID.Data;
export import ID.Func;
export import ID.Type;
export import Function.Address;
export import Archetype.LayoutInfo;
export import Layout.MemberOffset;
export import Stateless.Type;
export import Meta.TypeInfo;
export import Std.TemplateConcepts;
export import Std.QualifierTemplate;

export import Std;

export namespace
	Archetype
{
	template
		<	ID::TypeInstance
				t_tTypeID
		>
	struct
		Instance
	{
		static constexpr
		auto
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
		constexpr
		auto
			operator[]
			(	Layout::MemberAccessIDOf
				<	LayoutType
					const
				>	auto
					i_vName
			)	const
		noexcept
		->	decltype(auto)
		{	return
				Layout
				[	i_vName
				]
			;
		}

		/// access non-const member of the layout
		[[nodiscard]]
		constexpr
		auto
			operator[]
			(	Layout::MemberAccessIDOf
				<	LayoutType
				>	auto
					i_vName
			)
		noexcept
		->	decltype(auto)
		{	return
				Layout
				[	i_vName
				]
			;
		}

		template
			<	ID::StringLiteral
					t_vMemberName
			>
		requires
			Layout::MemberAccessIDOf
			<	ID::DataT
				<	t_vMemberName
				>
			,	LayoutType
				const
			>
		[[nodiscard]]
		constexpr
		auto
			Get
			()	const
		noexcept
		->	decltype(auto)
		{	return
				Layout
				[	ID::DataV
					<	t_vMemberName
					>
				]
			;
		}

		template
			<	ID::StringLiteral
					t_vMemberName
			>
		requires
			Layout::MemberAccessIDOf
			<	ID::DataT
				<	t_vMemberName
				>
			,	LayoutType
				const
			>
		[[nodiscard]]
		constexpr
		auto
			Get
			()
		noexcept
		->	decltype(auto)
		{
			return
				Layout
				[	ID::DataV
					<	t_vMemberName
					>
				]
			;
		}

		template
			<	ID::StringLiteral
					t_vMemberName
			,	typename
					t_tValue
			>
		requires
			Layout::MemberAccessIDOf
			<	ID::DataT
				<	t_vMemberName
				>
			,	LayoutType
			>
		constexpr
		auto
			Set
			(	t_tValue
				&&	i_rValue
			)
		noexcept
		->	void
		{
			Get
			<	t_vMemberName
			>()
			=	std::forward
				<	t_tValue
				>(	i_rValue
				)
			;
		}

		/// call const member functions
		template
			<	ID::FuncInstance
					t_tFunctionName
			,	typename
				...	t_tpArgument
			>
		requires
			Function::ValidAddress
			<	t_tFunctionName
			,	Instance
				const&
			,	t_tpArgument
				...
			>
		[[nodiscard]]
		constexpr
		auto
			operator()
			(	t_tFunctionName
			,	t_tpArgument
				&&
				...	i_rpArgument
			)	const
			noexcept(
				Function::AddressNoexcept
				<	t_tFunctionName
				,	Instance
					const&
				,	t_tpArgument
					...
				>
			)
		->	decltype(auto)
		{	return
				Function::Invoke
				<	t_tFunctionName
				>(	*this
				,	std::forward
					<	t_tpArgument
					>(	i_rpArgument
					)
					...
				)
			;
		}

		/// call non-const member functions
		template
			<	ID::FuncInstance
					t_tFunctionName
			,	typename
				...	t_tpArgument
			>
		requires
			Function::ValidAddress
			<	t_tFunctionName
			,	Instance
				&
			,	t_tpArgument
				...
			>
		[[nodiscard]]
		constexpr
		auto
			operator()
			(	t_tFunctionName
			,	t_tpArgument
				&&
				...	i_rpArgument
			)
			noexcept(
				Function::AddressNoexcept
				<	t_tFunctionName
				,	Instance
					&
				,	t_tpArgument
					...
				>
			)
		->	decltype(auto)
		{	return
				Function::Invoke
				<	t_tFunctionName
				>(	*this
				,	std::forward
					<	t_tpArgument
					>(	i_rpArgument
					)
					...
				)
			;
		}

		/// call const member functions
		template
			<	ID::StringLiteral
					t_vFuncID
			,	typename
				...	t_tpArgument
			>
		requires
			Function::ValidAddress
			<	ID::FuncT
				<	t_vFuncID
				>
			,	Instance
				const&
			,	t_tpArgument
				...
			>
		[[nodiscard]]
		constexpr
		auto
			Call
			(	t_tpArgument
				&&
				...	i_rpArgument
			)	const
			noexcept(
				Function::AddressNoexcept
				<	ID::FuncT
					<	t_vFuncID
					>
				,	Instance
					const&
				,	t_tpArgument
					...
				>
			)
		->	decltype(auto)
		{	return
				Function::Invoke
				<	ID::FuncT
					<	t_vFuncID
					>
				>(	*this
				,	std::forward
					<	t_tpArgument
					>(	i_rpArgument
					)
					...
				)
			;
		}

		/// call non-const member functions
		template
			<	ID::StringLiteral
					t_vFuncID
			,	typename
				...	t_tpArgument
			>
		requires
			Function::ValidAddress
			<	ID::FuncT
				<	t_vFuncID
				>
			,	Instance
				&
			,	t_tpArgument
				...
			>
		[[nodiscard]]
		constexpr
		auto
			Call
			(	t_tpArgument
				&&
				...	i_rpArgument
			)
			noexcept(
				Function::AddressNoexcept
				<	ID::FuncT
					<	t_vFuncID
					>
				,	Instance
					&
				,	t_tpArgument
					...
				>
			)
		->	decltype(auto)
		{	return
				Function::Invoke
				<	ID::FuncT
					<	t_vFuncID
					>
				>(	*this
				,	std::forward
					<	t_tpArgument
					>(	i_rpArgument
					)
					...
				)
			;
		}
	};

	template
		<	ID::StringLiteral
				t_vTypeID
		>
	using
		Make
	=	Instance
		<	ID::TypeT
			<	t_vTypeID
			>
		>
	;

	/// layout offsets for Archetypes
	template
		<	Std::TypePackInstanceOf_Transform
			<	Instance
			,	std::remove_reference_t
			>	t_tArchetype
		>
	constexpr
	auto
		OffsetOf
		(	t_tArchetype
			&&
		,	ID::DataInstance auto
				i_vName
		)
	{	return
			Layout::OffsetOf
			<	/// preserve constness
				Std::CVQualifier
				<	t_tArchetype
				>::	template
					Add
			>(	UnderlyingLayout
				<	t_tArchetype
				>
			,	i_vName
			)
		;
	}

	template
		<	typename
				t_tObject
		,	ID::StringLiteral
				t_vMemberName
		>
	concept
		HasDataMember
	=	Layout::MemberAccessIDOf
		<	ID::DataT<t_vMemberName>
		,	typename
			t_tObject
			::	LayoutType
		>
	;
}
