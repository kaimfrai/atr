export module ATR:Concatenate;

export import :DataMember;

export import Meta.ID;
export import Meta.Functional;

namespace
	ATR
{
	template
		<	typename
				t_tPrefix
		,	MemberInfo
				t_vInfix
		,	typename
				t_tSuffix
		>
	auto constexpr
	(	InfixDataMember
	)	()
	->	MemberInfo
	{
		using
			tNewID
		=	Meta::ID_T
			<	Meta::Concatenate
				<	t_tPrefix::Length
				+	t_vInfix.Name.Size
				+	t_tSuffix::Length
				>(	std::array
					{	t_tPrefix::StringView
					,	t_vInfix.Name
					,	t_tSuffix::StringView
					}
				)
			>
		;

		//	also update the alias target if it is an alias
		if	constexpr
			(	t_vInfix.SortKey
			==	AliasSortKey
			)
		{
			using
				tInfixAliasTarget
			=	Meta::RestoreTypeEntity<t_vInfix.Type>
			;
			using
				tAliasTarget
			=	Meta::ID_T
				<	Meta::Concatenate
					<	t_tPrefix::Length
					+	tInfixAliasTarget::Length
					+	t_tSuffix::Length
					>(	std::array
						{	t_tPrefix::StringView
						,	tInfixAliasTarget::StringView
						,	t_tSuffix::StringView
						}
					)
				>
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
			,	t_vInfix.Type
			,	t_vInfix.SortKey
			>;
	}

	template
		<	typename
				t_tPrefix
		,	auto
				t_vConfig
		,	typename
				t_tSuffix
		>
	MemberList constexpr inline
		InfixLayoutConfig
	=	Meta::InjectSequence<t_vConfig.size()>
		(	[]	(	auto
						i_vIndex
				)
			{	return
				InfixDataMember
				<	t_tPrefix
				,	t_vConfig[i_vIndex]
				,	t_tSuffix
				>();
			}
		,	Meta::Construct<MemberList>()
		)
	;
}

export namespace
	ATR
{
	/// uses the LayoutConfig mapped to the given literal and prefixes it with that literal
	template
		<	Meta::StringLiteral
				i_vType
		,	Meta::StringLiteral
				i_vPrefix
			=	i_vType
		>
	MemberList constexpr inline
		PrefixedLayoutConfig
	=	::ATR::InfixLayoutConfig
		<	Meta::ID_T<i_vPrefix>
		,	LayoutConfig<i_vType>
		,	Meta::ID<>
		>
	;

	/// uses the LayoutConfig mapped to the given literal and suffixes it with that literal
	template
		<	Meta::StringLiteral
				i_vType
		,	Meta::StringLiteral
				i_vSuffix
			=	i_vType
		>
	MemberList constexpr inline
		SuffixedLayoutConfig
	=	::ATR::InfixLayoutConfig
		<	Meta::ID<>
		,	LayoutConfig<i_vType>
		,	Meta::ID_T<i_vSuffix>
		>
	;
}
