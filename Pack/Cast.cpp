export module Pack.Cast;

export import Pack.Apply;
export import PackTemplate.Instance;
export import Meta.Template;

export namespace
	Pack
{
	/// converts the pack to the specified type pack
	template
		<	template
				<	typename
					...
				>
			typename
				t_t1TypePack
		>
	[[nodiscard]]
	constexpr
	PackTemplate::TypeInstanceOf
	<	t_t1TypePack
	>	auto
		Cast
		(	Instance auto
				i_vPack
		)
	{	return
			Apply
			(	i_vPack
			,	Meta::Template<t_t1TypePack>
				()
			)()
		;
	}

	/// converts the pack to the specified value pack
	template
		<	template
				<	auto
					...
				>
			typename
				t_t1ValuePack
		>
	[[nodiscard]]
	constexpr
	PackTemplate::ValueInstanceOf
	<	t_t1ValuePack
	>	auto
		Cast
		(	Instance auto
				i_vPack
		)
	{	return
			Apply
			(	i_vPack
			,	Meta::Template<t_t1ValuePack>
				()
			)()
		;
	}
}
