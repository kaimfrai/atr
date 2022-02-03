export module ATR.LayoutCreator;

export import ATR.Fork;
export import ATR.DataMember;
export import Meta.Type;

export namespace
	ATR
{
	/// designates an empty layout
	struct
		Empty
	{};

	[[nodiscard]]
	auto constexpr
	(	DataMemberLayoutSplit
	)	(	DataMemberInfo const
			*	i_aBegin
		,	Meta::USize
				i_nFirstOffset
		,	Meta::USize
				i_nEndOffset
		)
	->	Meta::USize
	{
		auto const
			aFirst
		=	i_aBegin
		+	i_nFirstOffset
		;
		auto const
			aLast
		=	i_aBegin
		+	i_nEndOffset
		-	1uz
		;
		if	(	aFirst->Type->Alignment
			==	aLast->Type->Alignment
			)
			return
				i_nFirstOffset
			+ 	::std::bit_floor<Meta::USize>
				(	i_nEndOffset
				-	i_nFirstOffset
				-	1uz
				)
			;
		else
		{	auto const
				aSplitPoint
			=	::std::lower_bound
				(	aFirst
				,	aLast + 1z
				,	aFirst->Type->Alignment / 2uz
				,	[]	(	DataMemberInfo const
							&	i_rLeft
						,	Meta::USize
								i_nRight
						)
					->	bool
					{
						return
							i_rLeft.Type->Alignment
						>	i_nRight
						;
					}
				)
			;
			return
			static_cast<Meta::USize>
			(	aSplitPoint
			-	i_aBegin
			);
		}
	}

	template
		<	typename
				t_tNorthArea
		,	typename
				t_tSouthArea
		>
	auto constexpr
	(	ForkLayout
	)	(	Meta::TypeToken<t_tNorthArea>
		,	Meta::TypeToken<t_tSouthArea>
		)
	->	Meta::TypeToken
		<	Fork
			<	t_tNorthArea
			,	t_tSouthArea
			>
		>
	{	return {};	}

	template
		<	DataMemberConfig
				t_vConfig
		,	Meta::USize
				t_nBegin
			=	0uz
		,	Meta::USize
				t_nEnd
			=	t_vConfig.size()
		>
	[[nodiscard]]
	auto constexpr
	(	CreateLayout
	)	(	Meta::ValueInfo<t_vConfig>
				i_vConfig
		,	Meta::ValueInfo<t_nBegin>
				i_vBegin
			=	{}
		,	Meta::ValueInfo<t_nEnd>
				i_vEnd
			=	{}
		)
	->	decltype(auto)
	{
		if	constexpr(t_nBegin == t_nEnd)
			return Meta::Type<Empty>;
		else
		if	constexpr(t_nBegin + 1z == t_nEnd)
		{
			auto constexpr
				aBegin
			=	begin(t_vConfig)
			+	t_nBegin
			;
			return
			Meta::Type
			<	ATR::DataMember
				<	ID_T
					<	StringLiteral
						<	aBegin->Name.size() + 1uz
						>{	aBegin->Name.data()
						}
					>
				,	Meta::RestoreTypeEntity
					<	aBegin->Type
					>
				>
			>;
		}
		else
		{
			auto constexpr
				vSplitIndex
			=	Meta::V
				<	DataMemberLayoutSplit
					(	begin(t_vConfig)
					,	t_nBegin
					,	t_nEnd
					)
				>
			;

			return
			ForkLayout
			(	CreateLayout
				(	i_vConfig
				,	i_vBegin
				,	vSplitIndex
				)
			,	CreateLayout
				(	i_vConfig
				,	vSplitIndex
				,	i_vEnd
				)
			);
		}
	}
}
