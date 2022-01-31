export module Meta.SelectByIndex;

export import Meta.Index;

export namespace
	Meta
{
	template
		<	auto
		,	typename
				t_tType
		>
	using
		ValueToType
	=	t_tType
	;

	template
		<	USize
			...	t_npFront
		>
	struct
		SelectByIndex
	{
		explicit constexpr
		(	SelectByIndex
		)	(	IndexToken<t_npFront...>
			)
		{}

		template
			<	typename
					t_tSelection
			>
		auto constexpr
		(	operator()
		)	(	ValueToType<t_npFront, void const*>
				...
			,	t_tSelection
				*	i_aSeĺection
			,	...
			)	const
		->	t_tSelection*
		{	return i_aSeĺection;	}
	};

	template
		<	USize
			...	t_npFront
		>
	(	SelectByIndex
	)	(	IndexToken<t_npFront...>
		)
	->	SelectByIndex<t_npFront...>
	;
}
