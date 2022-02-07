export module ATR.Layout;

export import ATR.ID;
export import ATR.DataMember;
export import Meta.Concept.Empty;

export namespace
	ATR
{
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
		{	::std::declval<t_tMemberArea>()
			[	t_tDataID{}
			];
		}
	;

	template
		<	typename
			...
		>
	struct
		Layout
	{
		static_assert
		(	Meta::ProtoNone<Layout>
		,	"Unexpected specialization!"
		);
	};
}

namespace
	ATR
{
	template
		<	typename
		,	typename
		>
	struct
		Member final
	{};

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
		SplitPack final
	{
		explicit constexpr
		(	SplitPack
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
		)	(	t_tpFront*
				...
			,	...
			)
		->	Layout
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
		)	(	Meta::ValueToType<t_npIndex, void const*>
				...
			,	t_tpBack*
				...
			)
		->	Layout
			<	t_tpBack
				...
			>
		{	return {};	}
	};

	template
		<	Meta::USize
			...	t_npIndex
		>
	(	SplitPack
	)	(	Meta::IndexToken<t_npIndex...>
		)
	->	SplitPack
		<	t_npIndex
			...
		>
	;

	[[nodiscard]]
	static auto constexpr
	(	LayoutSplitIndex
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
			...
		>
	struct
		SplitLayout final
	{
		static_assert
		(	Meta::ProtoNone<SplitLayout>
		,	"Unexpected specialization!"
		);
	};

	template
		<	typename
				t_tPointed
		>
	t_tPointed constexpr
	*	NullPtr
	=	nullptr
	;

	template
		<	typename
			...	t_tpName
		,	typename
			...	t_tpData
		>
	struct
		SplitLayout
		<	Member
			<	t_tpName
			,	t_tpData
			>
			...
		>	final
	{
		static Meta::USize constexpr
			SplitIndex
		=	LayoutSplitIndex
			({	Meta::Type<t_tpData>
				...
			})
		;

		static SplitPack constexpr
			LayoutSplit
		{	Meta::ZeroSequence<SplitIndex>
		};

		using
			North
		=	decltype
			(	LayoutSplit
			.	Front
				(	NullPtr
					<	Member
						<	t_tpName
						,	t_tpData
						>
					>
					...
				)
			)
		;

		using
			South
		=	decltype
			(	LayoutSplit
			.	Back
				(	NullPtr
					<	Member
						<	t_tpName
						,	t_tpData
						>
					>
					...
				)
			)
		;
	};

	template
		<	typename
			...	t_tpMember
		>
	using
		SplitLayoutNorth
	=	typename
		SplitLayout<t_tpMember...>
	::	North
	;

	template
		<	typename
			...	t_tpMember
		>
	using
		SplitLayoutSouth
	=	typename
		SplitLayout<t_tpMember...>
	::	South
	;

	template
		<	DataMemberConfig
				t_vConfig
		>
	[[nodiscard]]
	static auto constexpr
	(	CreateLayout
	)	()
	->	decltype(auto)
	{	return
		[]	<	Meta::USize
				...	t_npIndex
			>(	Meta::IndexToken<t_npIndex...>
			)
		{	return
			Layout
			<	Member
				<	ID_T
					<	StringLiteral<t_vConfig[t_npIndex]->Name.size()>
						{	t_vConfig[t_npIndex]->Name.data()
						}
					>
				,	Meta::RestoreTypeEntity
					<	t_vConfig[t_npIndex]->Type
					>
				>
				...
			>{};
		}(	Meta::Sequence<t_vConfig.size()>
		);
	}
}

export namespace
	ATR
{
	template
		<	typename
				t_tName
		,	typename
				t_tDerived
		>
	struct
		NorthAccess
	{
		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	t_tName
					i_vMemberID
			)	&
			noexcept
		->	decltype(auto)
		{	return
				static_cast<t_tDerived&>
				(	*this
				)
			.	NorthArea
			[	i_vMemberID
			];
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	t_tName
					i_vMemberID
			)	const&
			noexcept
		->	decltype(auto)
		{	return
				static_cast<t_tDerived const&>
				(	*this
				)
			.	NorthArea
			[	i_vMemberID
			];
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	t_tName
					i_vMemberID
			)	&&
			noexcept
		->	decltype(auto)
		{	return
				static_cast<t_tDerived&&>
				(	*this
				)
			.	NorthArea
			[	i_vMemberID
			];
		}
	};

	template
		<	typename
				t_tName
		,	typename
				t_tDerived
		>
	struct
		SouthAccess
	{
		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	t_tName
					i_vMemberID
			)	&
			noexcept
		->	decltype(auto)
		{	return
				static_cast<t_tDerived&>
				(	*this
				)
			.	SouthArea
			[	i_vMemberID
			];
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	t_tName
					i_vMemberID
			)	const&
			noexcept
		->	decltype(auto)
		{	return
				static_cast<t_tDerived const&>
				(	*this
				)
			.	SouthArea
			[	i_vMemberID
			];
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	t_tName
					i_vMemberID
			)	&&
			noexcept
		->	decltype(auto)
		{	return
				static_cast<t_tDerived&&>
				(	*this
				)
			.	SouthArea
			[	i_vMemberID
			];
		}
	};

	template
		<	typename
		,	typename
		>
	struct
		LayoutFork
	{
		static_assert
		(	Meta::ProtoNone<LayoutFork>
		,	"Unexpected specialization!"
		);
	};

	template
		<	typename
			...	t_tpNorthName
		,	typename
			...	t_tpNorthData
		,	typename
			...	t_tpSouthName
		,	typename
			...	t_tpSouthData
		>
	struct
		LayoutFork
		<	Layout<Member<t_tpNorthName, t_tpNorthData>...>
		,	Layout<Member<t_tpSouthName, t_tpSouthData>...>
		>
	:	NorthAccess
		<	t_tpNorthName
		,	LayoutFork
			<	Layout<Member<t_tpNorthName, t_tpNorthData>...>
			,	Layout<Member<t_tpSouthName, t_tpSouthData>...>
			>
		>
		...
	,	SouthAccess
		<	t_tpSouthName
		,	LayoutFork
			<	Layout<Member<t_tpNorthName, t_tpNorthData>...>
			,	Layout<Member<t_tpSouthName, t_tpSouthData>...>
			>
		>
		...
	{
		using
			NorthAccess
			<	t_tpNorthName
			,	LayoutFork
			>
		::	operator[]
			...
		;
		using
			SouthAccess
			<	t_tpSouthName
			,	LayoutFork
			>
		::	operator[]
			...
		;

		Layout<Member<t_tpNorthName, t_tpNorthData>...>
			NorthArea
		;

		Layout<Member<t_tpSouthName, t_tpSouthData>...>
			SouthArea
		;
	};

	template
		<	typename
			...	t_tpName
		,	typename
			...	t_tpData
		>
	struct
		Layout
		<	Member
			<	t_tpName
			,	t_tpData
			>
			...
		>
	:	LayoutFork
		<	SplitLayoutNorth<Member<t_tpName, t_tpData>...>
		,	SplitLayoutSouth<Member<t_tpName, t_tpData>...>
		>
	{
		using
			LayoutFork
			<	SplitLayoutNorth<Member<t_tpName, t_tpData>...>
			,	SplitLayoutSouth<Member<t_tpName, t_tpData>...>
			>
		::	operator
			[]
		;
	};

	template
		<>
	struct
		Layout<>
	{};

	template
		<	typename
				t_tName
		,	typename
				t_tData
		>
	struct
		Layout
		<	Member
			<	t_tName
			,	t_tData
			>
		>
	{
		t_tData
			Value
		;

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	t_tName
			)	const&
			noexcept
		->	t_tData const&
		{	return Value;	}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	t_tName
			)	&
			noexcept
		->	t_tData&
		{	return Value;	}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	t_tName
			)	&&
			noexcept
		->	t_tData
		{	return Value;	}
	};

	/// wraps around a value and provides access to it by a name token
	template
		<	typename
				t_tName
		,	Meta::ProtoStateless
				t_tData
		>
	struct
		Layout
		<	Member
			<	t_tName
			,	t_tData
			>
		>
	{
		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	t_tName
			)	const
		noexcept
		->	t_tData
		{	return {};	}
	};

	template
		<	typename
				t_tFirstName
		,	typename
				t_tFirstData
		,	typename
			...	t_tpRemainingName
		,	Meta::ProtoStateless
			...	t_tpRemainingStateless
		>
	struct
		Layout
		<	Member<t_tFirstName, t_tFirstData>
		,	Member<t_tpRemainingName, t_tpRemainingStateless>
			...
		>
	:	Layout<Member<t_tFirstName, t_tFirstData>>
	,	Layout<Member<t_tpRemainingName, t_tpRemainingStateless>>
		...
	{
		using
			Layout<Member<t_tFirstName, t_tFirstData>>
		::	operator[]
		;

		using
			Layout<Member<t_tpRemainingName, t_tpRemainingStateless>>
		::	operator[]
			...
		;
	};

	/// the type mapped to the string literal by LayoutInfo
	template
		<	ProtoID
				t_tTypeID
		>
	using
		CreateLayoutType
	=	decltype
		(	CreateLayout
			<	LayoutConfig
				<	t_tTypeID
				::	RawArray
				>
			>()
		)
	;
}
