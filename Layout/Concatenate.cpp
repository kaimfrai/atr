export module Layout.Concatenate;

export import Layout.DataMember;

export import ID.Modify;
export import ID.Base;

export import Pack.Instance;
export import Pack.Transform;

export namespace
	Layout
{
	template
		<	char
			...	t_npPrefix
		,	DataMemberConfig
				t_vConfig
		,	char
			...	t_npSuffix
		>
	auto constexpr
	(	InfixLayoutConfig
	)	(	ID::Extend<t_npPrefix...>
				i_vPrefix
		,	Meta::ValueInfo<t_vConfig>
		,	ID::Extend<t_npSuffix...>
				i_vSuffix
		)
	->	decltype(t_vConfig)
	{
		return
		[=]	<	::std::size_t
				...	t_npIndex
			>(	::std::index_sequence<t_npIndex...>
			)
		{
			auto
				vResult
			=	t_vConfig
			;

			(	...
			,	(	vResult
					[	t_npIndex
					]
				.	Name
				=	(	i_vPrefix
					+	ID::DataV
						<	ID::StringLiteral
							<	t_vConfig[t_npIndex].Name.size() + 1uz
							>{	t_vConfig[t_npIndex].Name.data()
							}
						>
					+	i_vSuffix
					)
				.	RawArray
				)
			);

			return vResult;

		}(	::std::make_index_sequence
			<	t_vConfig.size()
			>{}
		);
	}
}
