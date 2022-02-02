export module Meta.Type.Array;

export import Meta.Type;

export namespace
	Meta::Token
{
	template
		<	typename
				t_tElement
		>
	struct
		Array final
	{
		USize
			Extent
		;

		static auto constexpr
		(	GetElement
		)	()
		->	Type<t_tElement>
		{	return {};	}
	};

	template
		<	typename
				t_tElement
		,	USize
				t_nExtent
		>
	auto constexpr
	(	Decompose
	)	(	Type
			<	t_tElement[t_nExtent]
			>
		)
	->	Array<t_tElement>
	{	return { t_nExtent }; }

	template
		<	typename
				t_tElement
		>
	auto constexpr
	(	Decompose
	)	(	Type
			<	t_tElement[]
			>
		)
	->	Array<t_tElement>
	{	return { 0uz };	}
}