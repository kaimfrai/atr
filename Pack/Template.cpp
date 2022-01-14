export module Pack.Template;

export import Pack.Normalize;
export import Pack.Type;
export import Pack.Value;
export import Pack.Sequence;
export import Pack.Empty;
export import PackTemplate.Type;
export import PackTemplate.Value;
export import PackTemplate.Sequence;

export import Stateless.Type;

export namespace
	Pack
{
	///	converts an EmptyPack into a type that behaves like a generic template
	[[nodiscard]]
	constexpr
	Stateless::Type auto
		Template
		(	Empty
		)
	{
		return
			Stateless::Copy<Normalizer>
		;
	}

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
	constexpr
	PackTemplate::TypeInstance auto
		Template
		(	t_t1TypePack
			<	t_tpArgument
				...
			>
			const&
		)
	{	return
			Stateless::Copy
			<	PackTemplate::Type
				<	t_t1TypePack
				>
			>
		;
	}

	///	converts a ValuePackInstance into its corresponding a PackTemplate::Value
	///	overloaded for other pack types
	template
		<	template
				<	typename
						t_tNestedElement
				,	t_tNestedElement
					...
				>
			typename
				t_t1SequencePack
		,	typename
				t_tElement
		,	t_tElement
			...	t_tpElement
		>
	[[nodiscard]]
	constexpr
	PackTemplate::SequenceInstance auto
		Template
		(	t_t1SequencePack
			<	t_tElement
			,	t_tpElement
				...
			>
			const&
		)
	{	return
			Stateless::Copy
			<	PackTemplate::Sequence
				<	t_t1SequencePack
				>
			>
		;
	}

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
	constexpr
	PackTemplate::ValueInstance auto
		Template
		(	t_t1ValuePack
			<	t_tpArgument
				...
			>
			const&
		)
	{	return
			Stateless::Copy
			<	PackTemplate::Value
				<	t_t1ValuePack
				>
			>
		;
	}
}
