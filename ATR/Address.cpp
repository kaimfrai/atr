export module ATR.Address;

import ATR.Dependency;

import Meta.ID;

import Std;

using ::Meta::ProtoID;

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
		explicit(true) constexpr inline
		(	Function
		)	(	...
			)
		{}

		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	(	typename
					t_tpDependency
				::	ArgumentType
				...	i_vpArgument
			)
			noexcept
		->	decltype(auto)
		{	/// the body of a function needs to be defined separately and is found here by ADL.
			/// the requirements are that the first template argument is the FuncID.
			/// other template arguments will be deduced.
			return
			FunctionBody
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
		<	ProtoID
				t_tFuncID
		,	typename
			...	t_tpArgument
		>
	using
		FunctionType
	=	decltype
		(	Function
			(	t_tFuncID{}
			,	::std::declval<t_tpArgument>()
				...
			)
		)
	;

	template
		<	ProtoID
				t_tFuncID
		,	typename
			...	t_tpArgument
		>
	auto constexpr inline
	*	Address
	=	&
		FunctionType<t_tFuncID, t_tpArgument...>
	::	operator()
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
	=	ProtoID<t_tFuncID>
	and	requires
		{	typename
			FunctionType
			<	t_tFuncID
			,	t_tpArgument
				...
			>;
		}
	;
}
