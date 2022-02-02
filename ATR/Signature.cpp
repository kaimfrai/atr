export module ATR.Signature;

export import ATR.Body;
export import ATR.StaticDependency;
export import ATR.ArgumentDependency;

export import ATR.ID;

export namespace
	ATR
{
	/// to be instantiated and compiled in a separate .cpp file with extern template
	/// note that ideally, the body should be available to be inlined in the place of instantiation
	template
		<	StaticDependencyInstance
				t_vFuncID
		,	ArgumentDependencyInstance
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
			<	t_vFuncID
			,	t_tpDependency
				...
			>
		)
	->	BodyReturnType
		<	t_vFuncID
		,	t_tpDependency
			...
		>
	{	return
		Body
		(	t_vFuncID
			{}
		,	t_tpDependency
			{	i_vpArgument
			}
			...
		);
	}
}
