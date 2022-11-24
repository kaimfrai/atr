export module ATR:Address;

export import :Dependency;

export import Meta.ID;

import Std;

export namespace
	ATR
{
	template
		<	Dependency
				t_vFuncID
		,	Dependency
			...	t_vpDependency
		>
	struct
		Function
	{
		static bool constexpr
			Noexcept
		=	noexcept
			(	Body
				(	::std::declval
					<	typename
						decltype(t_vFuncID)
					::	BoundType
					>()
				,	::std::declval
					<	typename
						decltype(t_vpDependency)
					::	BoundType
					>()
					...
				)
			)
		;

		static auto constexpr
		(	Signature
		)	(	typename
				decltype(t_vpDependency)
			::	ArgumentType
				...	i_vpArgument
			)
			noexcept(Noexcept)
		->	decltype(auto)
		{	/// the body of a function needs to be defined separately and is found here by ADL.
			/// the requirements are that the first template argument is the FuncID.
			/// other template arguments will be deduced.
			return
			Body
			(	t_vFuncID()
			,	t_vpDependency
				(	i_vpArgument
				)
				...
			);
		}
	};

	template
		<	Meta::ProtoID
				t_tFuncID
		,	typename
			...	t_tpArgument
		>
	using
		FunctionType
	=	decltype
		(	MapAddress
			(	t_tFuncID{}
			,	::std::declval<t_tpArgument>()
				...
			)
		)
	;

	template
		<	Meta::ProtoID
				t_tFuncID
		,	typename
			...	t_tpArgument
		>
	auto constexpr inline
	*	Address
	=	&
		FunctionType<t_tFuncID, t_tpArgument...>
	::	Signature
	;

	/// checks if the address is mapped
	template
		<	typename
				t_tFuncID
		,	typename
			...	t_tpArgument
		>
	concept
		ProtoAddress
	=	Meta::ProtoID<t_tFuncID>
	and	requires
		{	typename
			FunctionType
			<	t_tFuncID
			,	t_tpArgument
				...
			>;
		}
	;

	template
		<	Meta::ProtoID
				t_tFunctionName
		,	typename
			...	t_tpArgument
		>
	bool constexpr inline
		AddressNoexcept
	=	FunctionType<t_tFunctionName, t_tpArgument...>
	::	Noexcept
	;
}
