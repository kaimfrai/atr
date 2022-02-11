export module ATR.Layout;

export import ATR.ID;
export import ATR.DataMember;
export import Meta.Concept.Empty;

export namespace
	ATR
{
	template
		<	typename
			...
		>
	struct
		Layout
	;

	template
		<	typename
		,	typename
			...
		>
	struct
		AliasLayout
	;
}

template
	<	typename
			t_tAlias
	,	typename
			t_tTarget
	>
struct
	Alias
{};

template
	<	typename
			t_tName
	,	typename
			t_tData
	>
struct
	Member final
{
	static Meta::TypeToken<t_tData> constexpr
		DataType
	{};
};

namespace
	ATR
{
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
			<	Meta::EraseAlignType
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
		if	(	aFirst->Align
			==	aLast->Align
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
				,	aFirst->Align / 2uz
				,	[]	(	Meta::EraseAlignType
								i_vLeft
						,	Meta::USize
								i_nRight
						)
					->	bool
					{	return
							i_vLeft.Align
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

	[[nodiscard]]
	static auto constexpr
	(	AliasSplitIndex
	)	(	Meta::Value<DataMemberInfo const*>
				i_aBegin
		,	Meta::Value<DataMemberInfo const*>
				i_aEnd
		)
	->	Meta::USize
	{	return
		static_cast<Meta::USize>
		(	::std::find_if
			(	i_aBegin
			,	i_aEnd
			,	[]	(	DataMemberInfo const
						&	i_rDataMember
					)
				->	bool
				{	return i_rDataMember.Alias.empty();	}
			)
		-	i_aBegin
		);
	}

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
			...	t_tpMember
		>
	struct
		SplitLayout final
	{
		static Meta::USize constexpr
			SplitIndex
		=	LayoutSplitIndex
			({	t_tpMember::DataType
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
					<	t_tpMember
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
					<	t_tpMember
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
	{
		Meta::USize constexpr
			nAliasSplitIndex
		=	AliasSplitIndex
			(	begin(t_vConfig)
			,	end(t_vConfig)
			)
		;
		return
		[]	<	Meta::USize
				...	t_npAliasIndex
			,	Meta::USize
				...	t_npDataIndex
			>(	Meta::IndexToken<t_npAliasIndex...>
			,	Meta::IndexToken<t_npDataIndex...>
			)
		{
			using
				LayoutType
			=	Layout
				<	::Member
					<	ID_Of<t_vConfig[t_npDataIndex]->Name>
					,	Meta::RestoreTypeEntity
						<	t_vConfig[t_npDataIndex]->Type
						>
					>
					...
				>
			;
			if	constexpr
				(	nAliasSplitIndex
				==	0uz
				)
				return
				LayoutType
				{};
			else
				return
				AliasLayout
				<	LayoutType
				,	::Alias
					<	ID_Of<t_vConfig[t_npAliasIndex]->Name>
					,	Meta::RestoreTypeEntity
						<	t_vConfig[t_npAliasIndex]->Type
						>
					>
					...
				>{};
		}(	Meta::Sequence<nAliasSplitIndex>
		,	Meta::Sequence<t_vConfig.size() - nAliasSplitIndex>
		+=	Meta::Index<nAliasSplitIndex>
		);
	}

	template
		<	typename
			...	t_tpAlias
		>
	struct
		AliasResolver
	:	t_tpAlias
		...
	{
		template
			<	typename
					t_tName
			>
		auto constexpr
		(	MatchAlias
		)	(	t_tName
			,	...
			)	const
		->	t_tName
		{	return t_tName{};	}

		template
			<	typename
					t_tName
			,	typename
					t_tTarget
			>
		auto constexpr
		(	MatchAlias
		)	(	t_tName
			,	::Alias<t_tName, t_tTarget> const*
			)	const
		->	decltype(auto)
		{	return
			operator()
			(	t_tTarget{}
			);
		}

		template
			<	typename
					t_tName
			>
		auto constexpr
		(	operator()
		)	(	t_tName
					i_vName
			)	const
		->	decltype(auto)
		{	return MatchAlias(i_vName, this);	}
	};

	template
		<	typename
			...	t_tpAlias
		>
	AliasResolver<t_tpAlias...> constexpr inline
		ResolveAlias
	{};

	template
		<	typename
				t_tLayout
		>
	auto constexpr
	(	ValidateOffsets
	)	()
	{
		static_assert(::std::is_standard_layout_v<t_tLayout>);
		union
		{	alignas(t_tLayout) ::std::byte vBuffer[sizeof(t_tLayout)];
			t_tLayout vLayout;
		}	vUnion;

		return
			(	static_cast<void*>(&vUnion.vLayout.NorthArea)
			==	static_cast<void*>(&vUnion.vBuffer[0uz])
			)
		and	(	static_cast<void*>(&vUnion.vLayout.SouthArea)
			==	static_cast<void*>(&vUnion.vBuffer[sizeof(t_tLayout::NorthArea)])
			)
		;
	}
}

export namespace
	ATR
{
	template
		<	typename
				t_tLayout
		,	typename
			...	t_tpAlias
		>
	struct
		AliasLayout
	:	t_tLayout
	{
		static auto constexpr
		(	ResolveAlias
		)	(	ProtoID auto
					i_vName
			)
		->	decltype(auto)
		{	return
			::ATR::ResolveAlias<t_tpAlias...>
			(	i_vName
			);
		}

		[[nodiscard]]
		static auto constexpr
		(	OffsetOf
		)	(	ProtoID auto
					i_vMember
			)
		->	decltype
			(	t_tLayout
			::	OffsetOf
				(	ResolveAlias
					(	i_vMember
					)
				)
			)
		{	return
				t_tLayout
			::	OffsetOf
				(	ResolveAlias
					(	i_vMember
					)
				)
			;
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoID auto
					i_vMember
			)	&
			noexcept
		->	decltype
			(	::std::declval<t_tLayout&>()
				[	ResolveAlias
					(	i_vMember
					)
				]
			)
		{	return
			static_cast<t_tLayout&>(*this)
			[	ResolveAlias
				(	i_vMember
				)
			];
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoID auto
					i_vMember
			)	const&
			noexcept
		->	decltype
			(	::std::declval<t_tLayout const&>()
				[	ResolveAlias
					(	i_vMember
					)
				]
			)
		{	return
			static_cast<t_tLayout const&>(*this)
			[	ResolveAlias
				(	i_vMember
				)
			];
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoID auto
					i_vMember
			)	&&
			noexcept
		->	decltype
			(	::std::declval<t_tLayout&&>()
				[	ResolveAlias
					(	i_vMember
					)
				]
			)
		{	return
			static_cast<t_tLayout&&>(*this)
			[	ResolveAlias
				(	i_vMember
				)
			];
		}
	};

	template
		<	typename
			...	t_tpMember
		>
	struct
		Layout
	{
		using NorthType = SplitLayoutNorth<t_tpMember...>;

		NorthType
			NorthArea
		;

		using SouthType = SplitLayoutSouth<t_tpMember...>;

		SouthType
			SouthArea
		;

		[[nodiscard]]
		static auto constexpr
		(	OffsetOf
		)	(	ProtoID auto
					i_vMemberName
			)
		->	decltype(NorthType::OffsetOf(i_vMemberName))
		{
			static_assert
			(	ValidateOffsets<Layout>()
			,	"Offsets of north or south areas have unexcepted values!"
			);

			return
				NorthType
			::	OffsetOf
				(	i_vMemberName
				)
			;
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoID auto
					i_vMemberID
			)	&
			noexcept
		->	decltype(::std::declval<NorthType&>()[i_vMemberID])
		{	return
			NorthArea
			[	i_vMemberID
			];
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoID auto
					i_vMemberID
			)	const&
			noexcept
		->	decltype(::std::declval<NorthType const&>()[i_vMemberID])
		{	return
			NorthArea
			[	i_vMemberID
			];
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoID auto
					i_vMemberID
			)	&&
			noexcept
		->	decltype(::std::declval<NorthType&&>()[i_vMemberID])
		{	return
			::std::move(NorthArea)
			[	i_vMemberID
			];
		}

		[[nodiscard]]
		static auto constexpr
		(	OffsetOf
		)	(	ProtoID auto
					i_vMemberName
			)
		->	decltype(SouthType::OffsetOf(i_vMemberName))
		{
			static_assert
			(	ValidateOffsets<Layout>()
			,	"Offsets of north or south areas have unexcepted values!"
			);

			return
			(	not Meta::ProtoStateless<decltype(::std::declval<SouthType>()[i_vMemberName])>
			*	sizeof(NorthType)
			)
			+	SouthType
			::	OffsetOf
				(	i_vMemberName
				)
			;
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoID auto
					i_vMemberID
			)	&
			noexcept
		->	decltype(::std::declval<SouthType&>()[i_vMemberID])
		{	return
			SouthArea
			[	i_vMemberID
			];
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoID auto
					i_vMemberID
			)	const&
			noexcept
		->	decltype(::std::declval<SouthType const&>()[i_vMemberID])
		{	return
			SouthArea
			[	i_vMemberID
			];
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoID auto
					i_vMemberID
			)	&&
			noexcept
		->	decltype(::std::declval<SouthType&&>()[i_vMemberID])
		{	return
			::std::move(SouthArea)
			[	i_vMemberID
			];
		}
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
		[[nodiscard]]
		static auto constexpr
		(	OffsetOf
		)	(	t_tName
			)
		->	Meta::USize
		{	return 0uz;	}

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
		static auto constexpr
		(	OffsetOf
		)	(	t_tName
			)
		->	Meta::USize
		{	return 0uz;	}

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
				t_tFirst
		,	typename
			...	t_tpRemainingName
		,	Meta::ProtoStateless
			...	t_tpRemainingStateless
		>
	struct
		Layout
		<	t_tFirst
		,	Member<t_tpRemainingName, t_tpRemainingStateless>
			...
		>
	:	Layout<t_tFirst>
	,	Layout<Member<t_tpRemainingName, t_tpRemainingStateless>>
		...
	{
		using
			Layout<t_tFirst>
		::	operator[]
		;
		using
			Layout<t_tFirst>
		::	OffsetOf
		;

		using
			Layout<Member<t_tpRemainingName, t_tpRemainingStateless>>
		::	operator[]
			...
		;

		using
			Layout<Member<t_tpRemainingName, t_tpRemainingStateless>>
		::	OffsetOf
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
