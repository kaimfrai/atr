export module ATR.Signature;

export import ATR.Body;
export import ATR.Dependency;
export import ATR.ID;

export namespace
	ATR
{
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
	{	return
		Body
		(	t_vFuncID()
		,	t_vpDependency
			(	i_vpArgument
			)
			...
		);
	}
}
