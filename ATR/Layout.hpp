export module ATR.Layout;

export import ATR.ID;
export import ATR.DataMember;

import Meta.Token.Sequence;

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
}

template
	<	typename
			t_tTarget
	,	char const
		&
		...	t_rpAlias
	>
struct
	Alias
{};

template
	<	typename
			t_tTarget
	,	char const
		&
		...	t_rpAlias
	>
auto constexpr
(	MakeAlias
)	(	::ATR::ID<t_rpAlias...>
	)
->	::Alias
	<	t_tTarget
	,	t_rpAlias
		...
	>
;

template
	<	::ATR::MemberInfo
			t_vMember
	>
using
	DeduceAlias
=	decltype
	(	::MakeAlias
		<	::Meta::RestoreTypeEntity
			<	t_vMember.Type
			>
		>(	::ATR::ID_Of
			<	t_vMember.Name
			>{}
		)
	)
;

template
	<	typename
			t_tData
	,	char const
		&
		...
	>
struct
	Member final
{
	static Meta::USize constexpr
		SortKey
	=	::ATR::MemberSortKey
		<	t_tData
		>
	;
};

template
	<	typename
			t_tData
	,	char const
		&
		...	t_rpName
	>
auto constexpr
(	MakeMember
)	(	::ATR::ID<t_rpName...>
	)
->	::Member
	<	t_tData
	,	t_rpName
		...
	>
;

template
	<	::ATR::MemberInfo
			t_vMember
	>
using
	DeduceMember
=	decltype
	(	::MakeMember
		<	::Meta::RestoreTypeEntity
			<	t_vMember.Type
			>
		>(	::ATR::ID_Of
			<	t_vMember.Name
			>{}
		)
	)
;

namespace
	ATR
{
	template
		<	Meta::USize
			...	t_npIndex
		>
	struct
		SplitPack final
	{
		[[no_unique_address]]
		::Meta::IndexToken<t_npIndex...>
			Sequence
		;

		template
			<	Meta::ProtoIndexedElement<t_npIndex>
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
		)	(	Meta::IgnoreIndexedElement<t_npIndex>
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
		<	::Meta::USize
			...	t_npIndex
		>
	(	SplitPack
	)	(	::Meta::IndexToken<t_npIndex...>
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
			<	Meta::USize
			>	i_vAlignList
		)
	->	Meta::USize
	{
		auto const
			aFirst
		=	begin(i_vAlignList)
		;
		auto const
			aLast
		=	end(i_vAlignList)
		-	1uz
		;
		if	(	*aFirst
			==	*aLast
			)
			return
			::std::bit_floor<Meta::USize>
			(	i_vAlignList.size()
			-	1uz
			);
		else
		{	auto const
				aSplitPoint
			=	::std::upper_bound
				(	aFirst
				,	aLast + 1z
				,	*aFirst
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
			({	t_tpMember::SortKey
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
			<	char const
				&
				...	t_rpName
			,	typename
					t_tTarget
			>
		auto constexpr
		(	MatchAlias
		)	(	ID<t_rpName...>
			,	::Alias<t_tTarget, t_rpName...> const*
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
				t_tProto
		,	typename
				t_tLayout
		>
	concept
		ProtoMemberID
	=	ProtoID<t_tProto>
	and	requires
		{	t_tLayout::OffsetOf(t_tProto{});
			::std::declval<t_tLayout&>()[t_tProto{}];
			::std::declval<t_tLayout const&>()[t_tProto{}];
			::std::declval<t_tLayout&&>()[t_tProto{}];
		}
	;

	template
		<	typename
				t_tProto
		,	typename
				t_tLayout
		,	typename
			...	t_tpAlias
		>
	concept
		ProtoAliasID
	=	ProtoMemberID
		<	decltype
			(	::ATR::ResolveAlias<t_tpAlias...>
				(	::std::declval<t_tProto>()
				)
			)
		,	t_tLayout
		>
	;

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
		)	(	ProtoAliasID<t_tLayout, t_tpAlias...> auto
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
		)	(	ProtoAliasID<t_tLayout, t_tpAlias...> auto
					i_vMember
			)
		->	Meta::USize
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
		)	(	ProtoAliasID<t_tLayout, t_tpAlias...> auto
					i_vMember
			)	&
			noexcept
		->	decltype(auto)
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
		)	(	ProtoAliasID<t_tLayout, t_tpAlias...> auto
					i_vMember
			)	const&
			noexcept
		->	decltype(auto)
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
		)	(	ProtoAliasID<t_tLayout, t_tpAlias...> auto
					i_vMember
			)	&&
			noexcept
		->	decltype(auto)
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
		)	(	ProtoMemberID<NorthType> auto
					i_vMemberID
			)
		->	Meta::USize
		{
			static_assert
			(	ValidateOffsets<Layout>()
			,	"Offsets of north or south areas have unexcepted values!"
			);

			return
				NorthType
			::	OffsetOf
				(	i_vMemberID
				)
			;
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoMemberID<NorthType> auto
					i_vMemberID
			)	&
			noexcept
		->	decltype(auto)
		{	return
			NorthArea
			[	i_vMemberID
			];
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoMemberID<NorthType> auto
					i_vMemberID
			)	const&
			noexcept
		->	decltype(auto)
		{	return
			NorthArea
			[	i_vMemberID
			];
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoMemberID<NorthType> auto
					i_vMemberID
			)	&&
			noexcept
		->	decltype(auto)
		{	return
			::std::move(NorthArea)
			[	i_vMemberID
			];
		}

		[[nodiscard]]
		static auto constexpr
		(	OffsetOf
		)	(	ProtoMemberID<SouthType> auto
					i_vMemberID
			)
		->	Meta::USize
		{
			static_assert
			(	ValidateOffsets<Layout>()
			,	"Offsets of north or south areas have unexcepted values!"
			);

			return
				sizeof(NorthType)
			+	SouthType
			::	OffsetOf
				(	i_vMemberID
				)
			;
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoMemberID<SouthType> auto
					i_vMemberID
			)	&
			noexcept
		->	decltype(auto)
		{	return
			SouthArea
			[	i_vMemberID
			];
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoMemberID<SouthType> auto
					i_vMemberID
			)	const&
			noexcept
		->	decltype(auto)
		{	return
			SouthArea
			[	i_vMemberID
			];
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoMemberID<SouthType> auto
					i_vMemberID
			)	&&
			noexcept
		->	decltype(auto)
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
				t_tData
		,	char const
			&
			...	t_rpName
		>
	struct
		Layout
		<	::Member
			<	t_tData
			,	t_rpName
				...
			>
		>
	{
		[[nodiscard]]
		static auto constexpr
		(	OffsetOf
		)	(	ID<t_rpName...>
			)
		->	Meta::USize
		{	return 0uz;	}

		Meta::Aggregate<t_tData>
			Value
		;

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ID<t_rpName...>
			)	const&
			noexcept
		->	Meta::Aggregate<t_tData> const&
		{	return Value;	}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ID<t_rpName...>
			)	&
			noexcept
		->	Meta::Aggregate<t_tData>&
		{	return Value;	}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ID<t_rpName...>
			)	&&
			noexcept
		->	Meta::Aggregate<t_tData>
		{	return Value;	}
	};

	template
		<	typename
			...	t_tpStatic
		>
	struct
		StaticData
	:	StaticData
		<	t_tpStatic
		>
		...
	{
		using StaticData<t_tpStatic>::operator[]...;
		using StaticData<t_tpStatic>::OffsetOf...;
	};

	template
		<	typename
				t_tData
		,	char const
			&
			...	t_rpName
		>
	struct
		StaticData
		<	::Member
			<	t_tData
			,	t_rpName
				...
			>
		>
	{
		[[nodiscard]]
		static auto constexpr
		(	OffsetOf
		)	(	ID<t_rpName...>
			)
		->	Meta::USize
		{	return 0uz;	}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ID<t_rpName...>
			)	const
			noexcept
		->	t_tData
		{	return {};	}
	};

	template<>
	struct
		StaticData<>
	{};

	template
		<	typename
				t_tStatic
		,	typename
				t_tDynamic
		>
	struct
		Data
	{
		using StaticLayout = t_tStatic;
		using DynamicLayout = t_tDynamic;

		static t_tStatic constexpr
			Static
		{};

		t_tDynamic
			Dynamic
		;

		static auto constexpr
		(	ResolveAlias
		)	(	ProtoMemberID<t_tStatic> auto
					i_vName
			)
		->	decltype(i_vName)
		{	return i_vName;	}

		static auto constexpr
		(	ResolveAlias
		)	(	ProtoMemberID<t_tDynamic> auto
					i_vName
			)
		->	decltype(i_vName)
		{	return i_vName;	}

		[[nodiscard]]
		static auto constexpr
		(	OffsetOf
		)	(	ProtoMemberID<t_tDynamic> auto
					i_vMemberID
			)
		->	Meta::USize
		{	return
				t_tDynamic
			::	OffsetOf
				(	i_vMemberID
				)
			;
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoMemberID<t_tDynamic> auto
					i_vMemberID
			)	&
			noexcept
		->	decltype(auto)
		{	return
			Dynamic
			[	i_vMemberID
			];
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoMemberID<t_tDynamic> auto
					i_vMemberID
			)	const&
			noexcept
		->	decltype(auto)
		{	return
			Dynamic
			[	i_vMemberID
			];
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoMemberID<t_tDynamic> auto
					i_vMemberID
			)	&&
			noexcept
		->	decltype(auto)
		{	return
			::std::move(Dynamic)
			[	i_vMemberID
			];
		}

		[[nodiscard]]
		static auto constexpr
		(	OffsetOf
		)	(	ProtoMemberID<t_tStatic> auto
					i_vMemberID
			)
		->	Meta::USize
		{	return
				t_tStatic
			::	OffsetOf
				(	i_vMemberID
				)
			;
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	ProtoMemberID<t_tStatic> auto
					i_vMemberID
			)	const&
			noexcept
		->	decltype(Static[i_vMemberID])
		{	return
			Static
			[	i_vMemberID
			];
		}
	};
}

namespace
	ATR
{
	[[nodiscard]]
	static auto constexpr
	(	AliasCount
	)	(	Meta::Aggregate<MemberInfo const&> const
			*	i_aBegin
		,	Meta::Aggregate<MemberInfo const&> const
			*	i_aEnd
		)
	->	Meta::USize
	{	return
		static_cast<Meta::USize>
		(	::std::lower_bound
			(	i_aBegin
			,	i_aEnd
			,	MemberInfo
				{	.SortKey = AliasSortKey + 1uz
				,	.Name = {}
				,	.Type = {}
				}
			)
		-	i_aBegin
		);
	}

	[[nodiscard]]
	static auto constexpr
	(	StaticCount
	)	(	Meta::Aggregate<MemberInfo const&> const
			*	i_aBegin
		,	Meta::Aggregate<MemberInfo const&> const
			*	i_aEnd
		)
	->	Meta::USize
	{	return
		static_cast<Meta::USize>
		(	i_aEnd
		-	::std::lower_bound
			(	i_aBegin
			,	i_aEnd
			,	MemberInfo
				{	.SortKey = StaticSortKey
				,	.Name = {}
				,	.Type = {}
				}
			)
		);
	}

	template
		<	MemberList
				t_vConfig
		>
	[[nodiscard]]
	static auto constexpr
	(	CreateLayout
	)	()
	->	decltype(auto)
	{
		Meta::USize constexpr
			nAliasCount
		=	AliasCount
			(	begin(t_vConfig)
			,	end(t_vConfig)
			)
		;

		Meta::USize constexpr
			nStaticCount
		=	StaticCount
			(	begin(t_vConfig) + nAliasCount
			,	end(t_vConfig)
			)
		;

		Meta::USize constexpr
			nDynamicCount
		=	t_vConfig.size()
		-	nAliasCount
		-	nStaticCount
		;

		return
		[]	<	Meta::USize
				...	t_npAliasIndex
			,	Meta::USize
				...	t_npDynamicIndex
			,	Meta::USize
				...	t_npStaticIndex
			>(	Meta::IndexToken<t_npAliasIndex...>
			,	Meta::IndexToken<t_npDynamicIndex...>
			,	Meta::IndexToken<t_npStaticIndex...>
			)
		{
			using
				DynamicLayoutType
			=	Layout
				<	::DeduceMember
					<	t_vConfig[t_npDynamicIndex]
					>
					...
				>
			;
			using
				StaticLayoutType
			=	StaticData
				<	::DeduceMember
					<	t_vConfig[t_npStaticIndex]
					>
					...
				>
			;

			using
				DataType
			=	Data
				<	StaticLayoutType
				,	DynamicLayoutType
				>
			;

			if	constexpr
				(	nAliasCount
				==	0uz
				)
				return
				DataType
				{};
			else
				return
				AliasLayout
				<	DataType
				,	::DeduceAlias
					<	t_vConfig[t_npAliasIndex]
					>
					...
				>{};
		}(	Meta::Sequence<nAliasCount>
		,	Meta::Sequence<nDynamicCount> += Meta::Index<nAliasCount>
		,	Meta::Sequence<nStaticCount> +=	Meta::Index<nAliasCount + nDynamicCount>
		);
	}
}

export namespace
	ATR
{
	/// the type mapped to the string literal by Member
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
