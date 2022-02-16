export module ATR.Layout;

export import ATR.ID;
export import ATR.DataMember;

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
		->	Meta::USize
		requires
			ProtoMemberID
			<	decltype(ResolveAlias(i_vMember))
			,	t_tLayout
			>
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
		->	decltype(auto)
		requires
			ProtoMemberID
			<	decltype(ResolveAlias(i_vMember))
			,	t_tLayout
			>
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
		->	decltype(auto)
		requires
			ProtoMemberID
			<	decltype(ResolveAlias(i_vMember))
			,	t_tLayout
			>
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
		->	decltype(auto)
		requires
			ProtoMemberID
			<	decltype(ResolveAlias(i_vMember))
			,	t_tLayout
			>
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
				t_tName
		,	typename
				t_tData
		>
	struct
		Layout
		<	::Member
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
				t_tName
		,	typename
				t_tData
		>
	struct
		StaticData
		<	::Member
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
		static t_tStatic constexpr
			Static
		{};

		t_tDynamic
			Dynamic
		;

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
	)	(	DataMemberInfo const
			*	i_aBegin
		,	DataMemberInfo const
			*	i_aEnd
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

	[[nodiscard]]
	static auto constexpr
	(	StaticCount
	)	(	DataMemberInfo const
			*	i_aBegin
		,	DataMemberInfo const
			*	i_aEnd
		)
	->	Meta::USize
	{	return
		static_cast<Meta::USize>
		(	i_aEnd
		-	::std::find_if
			(	i_aBegin
			,	i_aEnd
			,	[]	(	DataMemberInfo const
						&	i_rDataMember
					)
				->	bool
				{	return i_rDataMember.Type.Align == 0uz;	}
			)
		);
	}

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
				<	::Member
					<	ID_Of<t_vConfig[t_npDynamicIndex].Name>
					,	Meta::RestoreTypeEntity
						<	t_vConfig[t_npDynamicIndex].Type
						>
					>
					...
				>
			;
			using
				StaticLayoutType
			=	StaticData
				<	::Member
					<	ID_Of<t_vConfig[t_npStaticIndex].Name>
					,	Meta::RestoreTypeEntity
						<	t_vConfig[t_npStaticIndex].Type
						>
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
				,	::Alias
					<	ID_Of<t_vConfig[t_npAliasIndex].Name>
					,	Meta::RestoreTypeEntity
						<	t_vConfig[t_npAliasIndex].Type
						>
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
