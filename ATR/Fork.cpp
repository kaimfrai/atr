export module ATR.Fork;

export import ATR.ID;
export import Meta.Concept.Empty;

export namespace
	ATR
{
	/// wraps around a value and provides access to it by a name token
	template
		<	ProtoID
				t_tName
		,	typename
				t_tValue
		>
	struct
		DataMember
	{};

	/// constrains data ids to those that have the [] operator overloaded in a member area
	template
		<	typename
				t_tDataID
		,	typename
				t_tMemberArea
		>
	concept
		MemberAccessIDOf
	=	ProtoID
		<	t_tDataID
		>
	and	requires
			(	t_tDataID
					c_vDataID
			,	t_tMemberArea
					c_vMemberArea
			)
		{	c_vMemberArea
			[	c_vDataID
			];
		}
	;

	template
		<	typename
			...	t_tpDataMember
		>
	struct
		Fork
	;

	template
		<	typename
		,	Meta::USize
		>
	concept
		ProtoDeducePack
	=	true
	;

	template
		<	Meta::USize
			...	t_npIndex
		>
	struct
		ForkPack
	{
		explicit constexpr
		(	ForkPack
		)	(	Meta::IndexToken
				<	t_npIndex
					...
				>
			)
		{}

		template
			<	ProtoDeducePack<t_npIndex>
				...	t_tpFront
			>
		static auto constexpr
		(	Front
		)	(	t_tpFront*...
			,	...
			)
		->	Fork
			<	t_tpFront
				...
			>
		{	return {};	}

		template
			<	typename
				...	t_tpBack
			>
		static auto constexpr
		(	Back
		)	(	Meta::ValueToType
				<	t_npIndex
				,	void const*
				>
				...
			,	t_tpBack*
				...
			)
		->	Fork
			<	t_tpBack
				...
			>
		{	return {};	}
	};

	template
		<	Meta::USize
			...	t_npIndex
		>
	(	ForkPack
	)	(	Meta::IndexToken<t_npIndex...>
		)
	->	ForkPack
		<	t_npIndex
			...
		>
	;

	[[nodiscard]]
	auto constexpr
	(	DataMemberLayoutSplit
	)	(	::std::initializer_list
			<	Meta::EraseTypeToken
			>	i_vTypes
		)
	->	Meta::USize
	{
		auto const
			aFirst
		=	begin(i_vTypes)
		;
		auto const
			aLast
		=	end(i_vTypes)
		-	1uz
		;
		if	(	(*aFirst)->Alignment
			==	(*aLast)->Alignment
			)
			return
			::std::bit_floor<Meta::USize>
			(	i_vTypes.size()
			-	1uz
			);
		else
		{	auto const
				aSplitPoint
			=	::std::lower_bound
				(	aFirst
				,	aLast + 1z
				,	(*aFirst)->Alignment / 2uz
				,	[]	(	Meta::EraseTypeToken
								i_vLeft
						,	Meta::USize
								i_nRight
						)
					->	bool
					{	return
							i_vLeft->Alignment
						>	i_nRight
						;
					}
				)
			;
			return
			static_cast<Meta::USize>
			(	aSplitPoint
			-	aFirst
			);
		}
	}

	template
		<	typename
			...	t_tpName
		,	typename
			...	t_tpDataMember
		>
	struct
		Fork
		<	DataMember
			<	t_tpName
			,	t_tpDataMember
			>
			...
		>
	{
		static Meta::USize constexpr
			SplitIndex
		=	DataMemberLayoutSplit
			({	Meta::Type<t_tpDataMember>
				...
			})
		;

		static ForkPack constexpr
			ForkSplit
		{	Meta::ValueSequence<SplitIndex>()
		};

		using
			NorthAreaType
		=	decltype
			(	ForkSplit
			.	Front
				(	static_cast
					<	DataMember
						<	t_tpName
						,	t_tpDataMember
						>*
					>(	nullptr
					)
					...
				)
			)
		;

		using
			SouthAreaType
		=	decltype
			(	ForkSplit
			.	Back
				(	static_cast
					<	DataMember
						<	t_tpName
						,	t_tpDataMember
						>*
					>(	nullptr
					)
					...
				)
			)
		;

		NorthAreaType
			NorthArea
		;

		SouthAreaType
			SouthArea
		;

		/// access const members of the north member area
		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoID auto
					i_vMemberID
			)	const
			noexcept
		->	decltype
			(	NorthArea
				[	i_vMemberID
				]
			)
		{	return
			NorthArea
			[	i_vMemberID
			];
		}

		/// access non-const members of the north member area
		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoID auto
					i_vMemberID
			)
			noexcept
		->	decltype
			(	NorthArea
				[	i_vMemberID
				]
			)
		{	return
			NorthArea
			[	i_vMemberID
			];
		}

		/// access const members of the south member area
		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoID auto
					i_vMemberID
			)	const
			noexcept
		->	decltype
			(	SouthArea
				[	i_vMemberID
				]
			)
		{	return
			SouthArea
			[	i_vMemberID
			];
		}

		/// access non-const members of the south member area
		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoID auto
					i_vMemberID
			)
			noexcept
		->	decltype
			(	SouthArea
				[	i_vMemberID
				]
			)
		{	return
			SouthArea
			[	i_vMemberID
			];
		}
	};

	template
		<>
	struct
		Fork<>
	{};

	template
		<	typename
				t_tName
		,	typename
				t_tValue
		>
	struct
		Fork
		<	DataMember
			<	t_tName
			,	t_tValue
			>
		>
	{
		t_tValue
			Value
		;

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	t_tName
			)	const
			noexcept
		->	t_tValue const&
		{	return Value;	}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	t_tName
			)
			noexcept
		->	t_tValue&
		{	return Value;	}
	};

	/// wraps around a value and provides access to it by a name token
	template
		<	typename
				t_tName
		,	Meta::ProtoStateless
				t_tValue
		>
	struct
		Fork
		<	DataMember
			<	t_tName
			,	t_tValue
			>
		>
	{
		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	t_tName
			)	const
		noexcept
		->	t_tValue
		{	return t_tValue{};	}
	};

	template
		<	typename
				t_tFirstName
		,	typename
				t_tFirstType
		,	typename
			...	t_tpRemainingName
		,	Meta::ProtoStateless
			...	t_tpRemainingStateless
		>
	struct
		Fork
		<	DataMember<t_tFirstName, t_tFirstType>
		,	DataMember<t_tpRemainingName, t_tpRemainingStateless>
			...
		>
	:	Fork<DataMember<t_tFirstName, t_tFirstType>>
	,	Fork<DataMember<t_tpRemainingName, t_tpRemainingStateless>>
		...
	{
		using Fork<DataMember<t_tFirstName, t_tFirstType>>::operator[];
		using Fork<DataMember<t_tpRemainingName, t_tpRemainingStateless>>::operator[]...;
	};
}
