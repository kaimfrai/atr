export module Meta.Template;

export import PackTemplate.Type;
export import PackTemplate.Value;
export import PackTemplate.Sequence;

export namespace
	Meta
{
	///	frequently used shortcut to create an object of type PackTemplate::Type
	template
		<	template
				<	typename
					...
				>
			typename
				t_t1TypePack
		>
	constexpr
	auto
		Template
		()
	->	PackTemplate::Type
		<	t_t1TypePack
		>
	{	return{};	}

	///	frequently used shortcut to create an object of type PackTemplate::Sequence
	template
		<	template
				<	typename
						t_tElement
				,	t_tElement
					...
				>
			typename
				t_t1SequencePack
		>
	constexpr
	auto
		Template
		()
	-> PackTemplate::Sequence
		<	t_t1SequencePack
		>
	{	return{};	}
	
	///	frequently used shortcut to create an object of type PackTemplate::Value
	template
		<	template
				<	auto
					...
				>
			typename
				t_t1ValuePack
		>
	constexpr
	auto
		Template
		()
	->	PackTemplate::Value
			<	t_t1ValuePack
			>
	{	return{};	}
}
