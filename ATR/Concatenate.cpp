export module ATR.Concatenate;

export import ATR.ID;
export import ATR.StringLiteral;
export import ATR.DataMember;

export import Meta.ValueInfo;

export namespace
	ATR
{
	template
		<	ProtoID
				t_tPrefix
		,	DataMemberConfig
				t_vConfig
		,	ProtoID
				t_tSuffix
		>
	auto constexpr
	(	InfixLayoutConfig
	)	(	t_tPrefix
		,	Meta::ValueInfo<t_vConfig>
		,	t_tSuffix
		)
	->	decltype(t_vConfig)
	{	return
		[]	<	Meta::USize
				...	t_npIndex
			>(	Meta::IndexToken<t_npIndex...>
			)
		->	decltype(auto)
		{
			auto
				vResult
			=	t_vConfig
			;

			(	...
			,	(	vResult[t_npIndex]
				->	Name
				=	ID_T
					<	StringLiteral
						<	t_tPrefix::Length
						+	t_vConfig[t_npIndex]->Name.size()
						+	t_tSuffix::Length
						>{	t_tPrefix::StringView
						,	t_vConfig[t_npIndex]->Name
						,	t_tSuffix::StringView
						}
					>
				::	StringView
				)
			);

			return vResult;

		}(	Meta::Sequence<t_vConfig.size()>
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
	DataMemberConfig constexpr inline
		PrefixedLayoutConfig
	=	InfixLayoutConfig
		(	ID_V<i_vPrefix>
		,	Meta::V<LayoutConfig<i_vType>>
		,	""_id
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
	DataMemberConfig constexpr inline
		SuffixedLayoutConfig
	=	ATR::InfixLayoutConfig
		(	""_id
		,	Meta::V<LayoutConfig<i_vType>>
		,	ID_V<i_vSuffix>
		)
	;
}
