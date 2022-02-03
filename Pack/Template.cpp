export module Pack.Template;

export import Pack.Type;
export import Pack.Value;
export import Pack.Empty;
export import PackTemplate.Type;
export import PackTemplate.Value;

export namespace
	Pack
{

	///	converts a TypePackInstance into its corresponding a PackTemplate::Type
	///	overloaded for other pack types
	template
		<	template
				<	typename
					...
				>
			typename
				t_t1TypePack
		,	typename
			...	t_tpArgument
		>
	[[nodiscard]]
	auto constexpr
		Template
		(	t_t1TypePack
			<	t_tpArgument
				...
			>
			const&
		)
	->	PackTemplate::Type<t_t1TypePack>
	{	return {};	}

	///	converts a ValuePackInstance into its corresponding a PackTemplate::Value
	///	overloaded for other pack types
	template
		<	template
				<	auto
					...
				>
			typename
				t_t1ValuePack
		,	auto
			...	t_tpArgument
		>
	[[nodiscard]]
	auto constexpr
		Template
		(	t_t1ValuePack
			<	t_tpArgument
				...
			>
			const&
		)
	->	PackTemplate::Value<t_t1ValuePack>
	{	return {};	}
}
