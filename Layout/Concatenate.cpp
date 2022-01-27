export module Layout.Concatenate;

export import Layout.DataMember;

export import ID.Make;

export import Pack.Instance;
export import Pack.Transform;

export namespace
	Layout
{
	template
		<	DataMemberConfig
				t_vConfig
		>
	auto constexpr
	(	InfixLayoutConfig
	)	(	auto
				i_vPrefix
		,	Meta::ValueInfo<t_vConfig>
		,	auto
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
					+	ID::MakeV
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
