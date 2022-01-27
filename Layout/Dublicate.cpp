export module Layout.Dublicate;

export import Layout.DataMember;

export import ID.Make;
export import Pack.Fold;
export import Pack.MakeSequence;
export import Pack.Cast;
export import Pack.Type;

export namespace
	Layout
{
	template
		<	DataMemberInstance
			...	t_tpDataMember
		>
	struct
		Dublicator
	{
		template
			<	ID::Instance
					t_tName
			,	Std::Object
					t_tValue
			,	char
				...	t_npDigit
			>
		static auto constexpr
			AppendedName
			(	Meta::TypeToken
				<	DataMember
					<	t_tName
					,	t_tValue
					>
				>
			,	ID::Decimal
				<	t_npDigit
					...
				>
			)
		{	return
				DataMemberInfo
				<	decltype(
						t_tName
						{}
					+	ID::Extend
						<	char
						,	'['
						,	t_npDigit
							...
						,	']'
						>{}
					)
				,	t_tValue
				>{}
			;
		}

		[[nodiscard]]
		auto constexpr
			operator()
			(	Pack::TypeInstance auto
					i_vNewPack
			,	Meta::ValueInstance auto
					i_vIndex
			)	const
		{	return
				Pack::Concat
				(	i_vNewPack
				,	AppendedName
					(	Meta::Type
						<	t_tpDataMember
						>
					,	i_vIndex
						.	Value
					)
					...
				)
			;
		}
	};

	/// multiplies the configuration and appends an [index] to each name
	template
		<	char
			...	t_npDigit
		>
	Config auto constexpr
		operator*
		(	Config auto
				i_vBase
		,	ID::Decimal
			<	t_npDigit
				...
			>	i_vMultiplier
		)
	{	return
			Pack::FoldLeft
			(	ID::MakeDecimalSequence
				(	i_vMultiplier
				)
			,	Pack::Cast
				<	Dublicator
				>(	i_vBase
				)
			,	DataMemberPack
				<>{}
			)
		;
	}
}
