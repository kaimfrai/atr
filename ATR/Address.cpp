export module ATR.Address;

import ATR.Dependency;

import Meta.ID.Concept;

import Std;

export namespace
	ATR
{
	template
		<	typename
				t_tFuncID
		,	typename
			...	t_tpDependency
		>
	struct
		Function
	{
		static bool constexpr
			Noexcept
		=	noexcept
			(	Body
				(	::std::declval
					<	t_tFuncID
					>()
				,	::std::declval
					<	t_tpDependency
					>()
					...
				)
			)
		;

		[[nodiscard]]
		static auto constexpr
		(	operator ()
		)	(	typename
					t_tpDependency
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
			(	t_tFuncID
				{}
			,	t_tpDependency
				{	i_vpArgument
				}
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
	::	operator ()
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
