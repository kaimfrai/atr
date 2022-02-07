export module ATR.Signature;

export import ATR.Dependency;

export namespace
	ATR
{
	/// whether a call to Body is noexcept
	template
		<	typename
				t_tFuncID
		,	typename
			...	t_tpDependency
		>
	bool constexpr
		BodyNoexcept
	=	noexcept
		(	Body
			(	::std::declval<t_tFuncID>()
			,	::std::declval<t_tpDependency>()
				...
			)
		)
	;

	/// the type returned by a call to Body
	template
		<	typename
				t_tFuncID
		,	typename
			...	t_tpDependency
		>
	using
		BodyReturnType
	=	decltype
		(	Body
			(	::std::declval<t_tFuncID>()
			,	::std::declval<t_tpDependency>()
				...
			)
		)
	;

	/// to be instantiated and compiled in a separate .cpp file with extern template
	/// note that ideally, the body should be available to be inlined in the place of instantiation
	template
		<	Dependency
				t_vFuncID
		,	Dependency
			...	t_vpDependency
		>
	auto constexpr
	(	Signature
	)	(	typename
			decltype(t_vpDependency)
		::	ArgumentType
			...	i_vpArgument
		)
		noexcept
		(	BodyNoexcept
			<	typename decltype(t_vFuncID)::BoundType
			,	typename decltype(t_vpDependency)::BoundType
				...
			>
		)
	->	BodyReturnType
		<	typename decltype(t_vFuncID)::BoundType
		,	typename decltype(t_vpDependency)::BoundType
			...
		>
	{	/// the body of a function needs to be defined separately.
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
}
