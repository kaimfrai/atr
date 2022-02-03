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
		<	DependencyInstance
				t_tFuncID
		,	DependencyInstance
			...	t_tpDependency
		>
	auto constexpr
	(	Signature
	)	(	typename
			t_tpDependency
		::	ArgumentType
			...	i_vpArgument
		)
		noexcept
		(	BodyNoexcept
			<	t_tFuncID
			,	t_tpDependency
				...
			>
		)
	->	BodyReturnType
		<	t_tFuncID
		,	t_tpDependency
			...
		>
	{	return
		Body
		(	t_tFuncID
			{	typename
				t_tFuncID
			::	ArgumentType
				{}
			}
		,	t_tpDependency
			{	i_vpArgument
			}
			...
		);
	}
}
