export module ATR:Concatenate;

export import :ID;
export import :StringLiteral;
export import :DataMember;

namespace
	ATR
{
	template
		<	char const
			&
			...	t_rpPrefix
		,	char const
			&
			...	t_rpInfix
		,	char const
			&
			...	t_rpSuffix
		>
	auto constexpr
	(	InfixID
	)	(	ID<t_rpPrefix...>
		,	ID<t_rpInfix...>
		,	ID<t_rpSuffix...>
		)
	->	ID
		<	t_rpPrefix
			...
		,	t_rpInfix
			...
		,	t_rpSuffix
			...
		>
	{	return {};	}

	template
		<	typename
				t_tPrefix
		,	MemberInfo const
			&	t_rInfix
		,	typename
				t_tSuffix
		>
	auto constexpr
	(	InfixDataMember
	)	()
	->	MemberInfo const&
	{
		using
			tNewID
		=	decltype
			(	InfixID
				(	t_tPrefix{}
				,	ID_Of<t_rInfix.Name>{}
				,	t_tSuffix{}
				)
			)
		;

		//	also update the alias target if it is an alias
		if	constexpr
			(	t_rInfix.SortKey
			==	AliasSortKey
			)
		{
			using
				tInfixAliasTarget
			=	Meta::RestoreTypeEntity<t_rInfix.Type>
			;
			using
				tAliasTarget
			=	decltype
				(	InfixID
					(	t_tPrefix{}
					,	tInfixAliasTarget{}
					,	t_tSuffix{}
					)
				)
			;
			return
			MemberInstance
			<	tNewID
			,	Meta::Type<tAliasTarget>
			,	AliasSortKey
			>;
		}
		else
			return
			MemberInstance
			<	tNewID
			,	t_rInfix.Type
			,	t_rInfix.SortKey
			>;
	}

	template
		<	typename
				t_tPrefix
		,	auto const
			&	t_rConfig
		,	typename
				t_tSuffix
		>
	MemberList constexpr inline
		InfixLayoutConfig
	=	[]	<	Meta::USize
				...	t_npIndex
			>(	Meta::IndexToken<t_npIndex...>
			)
		->	decltype(auto)
		{	return
			MemberList
			{	&InfixDataMember
				<	t_tPrefix
				,	t_rConfig[t_npIndex]
				,	t_tSuffix
				>()
				...
			};

		}(	Meta::Sequence<t_rConfig.size()>
		)
	;
}

export namespace
	ATR
{
	/// uses the LayoutConfig mapped to the given literal and prefixes it with that literal
	template
		<	StringLiteral
				i_vType
		,	StringLiteral
				i_vPrefix
			=	i_vType
		>
	MemberList constexpr inline
		PrefixedLayoutConfig
	=	::ATR::InfixLayoutConfig
		<	ID_T<i_vPrefix>
		,	LayoutConfig<i_vType>
		,	ID<>
		>
	;

	/// uses the LayoutConfig mapped to the given literal and suffixes it with that literal
	template
		<	StringLiteral
				i_vType
		,	StringLiteral
				i_vSuffix
			=	i_vType
		>
	MemberList constexpr inline
		SuffixedLayoutConfig
	=	::ATR::InfixLayoutConfig
		<	ID<>
		,	LayoutConfig<i_vType>
		,	ID_T<i_vSuffix>
		>
	;
}
