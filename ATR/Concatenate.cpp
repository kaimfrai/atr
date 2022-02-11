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
		,	StringView
				t_vInfix
		,	ProtoID
				t_tSuffix
		>
	auto constexpr
	(	InfixStringView
	)	()
	->	StringView
	{	if	constexpr
			(	t_vInfix.size() == 0uz
			)
			return ID<>::StringView;
		else
			return
				ID_T
				<	StringLiteral
					<	t_tPrefix::Length
					+	t_vInfix.size()
					+	t_tSuffix::Length
					>{	t_tPrefix::StringView
					,	t_vInfix
					,	t_tSuffix::StringView
					}
				>
			::	StringView
			;
	}

	template
		<	ProtoID
				t_tPrefix
		,	DataMemberInfo
				t_vInfix
		,	ProtoID
				t_tSuffix
		>
	auto constexpr
	(	InfixDataMember
	)	()
	->	DataMemberInfo
	{
		StringView constexpr
			Name
		=	InfixStringView
			<	t_tPrefix
			,	t_vInfix.Name
			,	t_tSuffix
			>()
		;
		StringView constexpr
			Alias
		=	InfixStringView
			<	t_tPrefix
			,	t_vInfix.Alias
			,	t_tSuffix
			>()
		;
		if	constexpr(Alias)
			return
			{	.Type = Meta::Type<ID_Of<Alias>>
			,	.Name = Name
			,	.Alias = Alias
			};
		else
			return
			{	.Type = t_vInfix.Type
			,	.Name = Name
			,	.Alias = Alias
			};
	}

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
		->	decltype(t_vConfig)
		{	return
			decltype(t_vConfig)
			{	InfixDataMember
				<	t_tPrefix
				,	t_vConfig[t_npIndex]
				,	t_tSuffix
				>()
				...
			};

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
		,	""_ID
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
		(	""_ID
		,	Meta::V<LayoutConfig<i_vType>>
		,	ID_V<i_vSuffix>
		)
	;
}
