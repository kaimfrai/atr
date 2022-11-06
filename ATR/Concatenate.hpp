export module ATR:Concatenate;

export import :ID;
export import :StringLiteral;
export import :DataMember;

namespace
	ATR
{
	template
		<	Meta::USize
				t_nSize
		>
	auto constexpr
	(	InfixID
	)	(	StringView
				i_vPrefix
		,	StringView
				i_vInfix
		,	StringView
				i_vSuffix
		)
	->	StringLiteral<t_nSize>
	{
		StringLiteral<t_nSize>
			vResult
		;

		auto vPos
		=	::std::copy
			(	begin(i_vPrefix)
			,	end(i_vPrefix)
			,	begin(vResult)
			)
		;
		(	vPos
		=	::std::copy
			(	begin(i_vInfix)
			,	end(i_vInfix)
			,	vPos
			)
		);
		::std::copy
		(	begin(i_vSuffix)
		,	end(i_vSuffix)
		,	vPos
		);

		return
			vResult
		;
	}

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
		=	ID_T
			<	InfixID
				<	t_tPrefix::Length
				+	t_rInfix.Name.Size
				+	t_tSuffix::Length
				>(	t_tPrefix::StringView
				,	t_rInfix.Name
				,	t_tSuffix::StringView
				)
			>
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
			=	ID_T
				<	InfixID
					<	t_tPrefix::Length
					+	tInfixAliasTarget::Length
					+	t_tSuffix::Length
					>(	t_tPrefix::StringView
					,	tInfixAliasTarget::StringView
					,	t_tSuffix::StringView
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
			,	t_rInfix.Type
			,	t_rInfix.SortKey
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
	=	[]	<	Meta::USize
				...	t_npIndex
			>(	Meta::IndexToken<t_npIndex...>
			)
		->	decltype(auto)
		{	return
			MemberList
			{	&InfixDataMember
				<	t_tPrefix
				,	t_vConfig[t_npIndex]
				,	t_tSuffix
				>()
				...
			};

		}(	Meta::Sequence<t_vConfig.size()>
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
