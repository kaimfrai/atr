export module ATR.Concatenate;

export import ATR.ID;
export import ATR.StringLiteral;
export import ATR.DataMember;

export import Meta.ValueInfo;

export namespace
	ATR
{
	/// checks if an identifier starts with a given string and is an instance of a given template
	template
		<	typename
				t_tID
		,	StringLiteral
				t_vStart
		>
	concept
		ProtoPrefixID
	=	ProtoID<t_tID>
	and	starts_with(t_tID{}, t_vStart)
	;

	/// checks if an identifier end with a given string and is an instance of a given template
	template
		<	typename
				t_tID
		,	StringLiteral
				t_vEnd
		>
	concept
		ProtoSuffixID
	=	ProtoID<t_tID>
	and	ends_with(t_tID{}, t_vEnd)
	;

	template
		<	DataMemberConfig
				t_vConfig
		>
	auto constexpr
	(	InfixLayoutConfig
	)	(	ProtoID auto
				i_vPrefix
		,	Meta::ValueInfo<t_vConfig>
		,	ProtoID auto
				i_vSuffix
		)
	->	decltype(t_vConfig)
	{
		return
		[=]	<	Meta::USize
				...	t_npIndex
			>(	Meta::IndexToken<t_npIndex...>
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
				.	get().Name
				=	(	i_vPrefix
					+	ID_V
						<	StringLiteral
							<	t_vConfig[t_npIndex].get().Name.size() + 1uz
							>{	t_vConfig[t_npIndex].get().Name.data()
							}
						>
					+	i_vSuffix
					)
				.	StringView
				)
			);

			return vResult;

		}(	Meta::Sequence
			<	t_vConfig.size()
			>()
		);
	}

	/// uses the LayoutConfig mapped to the given literal and prefixes it with that literal
	template
		<	StringLiteral
				i_vType
		,	StringLiteral
				i_vPrefix
			=	i_vType
		>
	ATR::DataMemberConfig constexpr inline
		PrefixedLayoutConfig
	=	ATR::InfixLayoutConfig
		(	ID_V<i_vPrefix>
		,	Meta::V<LayoutConfig<i_vType>>
		,	ID<>{}
		)
	;

	/// uses the LayoutConfig mapped to the given literal and suffixes it with that literal
	template
		<	StringLiteral
				i_vType
		,	StringLiteral
				i_vSuffix
			=	i_vType
		>
	ATR::DataMemberConfig constexpr inline
		SuffixedLayoutConfig
	=	ATR::InfixLayoutConfig
		(	ID<>{}
		,	Meta::V<LayoutConfig<i_vType>>
		,	ID_V<i_vSuffix>
		)
	;
}
