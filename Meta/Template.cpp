export module Meta.Template;

export import PackTemplate.Type;
export import PackTemplate.Value;

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
	auto constexpr
		Template
		()
	->	PackTemplate::Type
		<	t_t1TypePack
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
	auto constexpr
		Template
		()
	->	PackTemplate::Value
			<	t_t1ValuePack
			>
	{	return{};	}
}
