export module ATR.Dependency;

export namespace
	ATR
{
	template
		<	typename
				t_tArgument
		,	typename
			...	t_tpItem
		>
	struct
		Dependency
	{
		using
			ArgumentType
		=	t_tArgument
		;

		[[no_unique_address]]
		t_tArgument
			Argument
		;
	};
}
