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
	{
		static_assert
		(	Meta::ProtoNone<AliasLayout>
		,	"Unexpected specialization!"
		);
	};
}

template
	<	typename
			t_tAlias
	,	typename
			t_tTarget
	>
struct
	Alias final
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
}

export namespace
	ATR
{
	template
		<	typename
				t_tAliasName
		,	typename
				t_tAliasTarget
		,	typename
				t_tDerived
		>
	struct
		AliasAccess
	{
		[[nodiscard]]
		static auto constexpr
		(	OffsetOf
		)	(	t_tAliasName
			)
		->	Meta::USize
		{	return
				t_tDerived
			::	OffsetOf
				(	t_tAliasTarget{}
				)
			;
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	t_tAliasName
			)	&
			noexcept
		->	decltype(auto)
		{	return
				static_cast<t_tDerived&>
				(	*this
				)
			[	t_tAliasTarget{}
			];
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	t_tAliasName
			)	const&
			noexcept
		->	decltype(auto)
		{	return
				static_cast<t_tDerived const&>
				(	*this
				)
			[	t_tAliasTarget{}
			];
		}

		[[nodiscard]]
		auto constexpr
		(	operator[]
		)	(	t_tAliasName
			)	&&
			noexcept
		->	decltype(auto)
		{	return
				static_cast<t_tDerived&&>
				(	*this
				)
			[	t_tAliasTarget{}
			];
		}
	};

	template
		<	typename
				t_tLayout
		,	typename
			...	t_tpAliasName
		,	typename
			...	t_tpAliasTarget
		>
	struct
		AliasLayout
		<	t_tLayout
		,	::Alias<t_tpAliasName, t_tpAliasTarget>
			...
		>
	:	t_tLayout
	,	AliasAccess
		<	t_tpAliasName
		,	t_tpAliasTarget
		,	AliasLayout
			<	t_tLayout
			,	::Alias<t_tpAliasName, t_tpAliasTarget>
				...
			>
		>
		...
	{
		using t_tLayout::operator[];
		using t_tLayout::OffsetOf;
		using AliasAccess<t_tpAliasName, t_tpAliasTarget, AliasLayout>::operator[]...;
		using AliasAccess<t_tpAliasName, t_tpAliasTarget, AliasLayout>::OffsetOf...;
	};

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
		static auto constexpr
		(	OffsetOf
		)	(	t_tName
					i_vMemberName
			)
		->	Meta::USize
		{	return
				decltype(t_tDerived::NorthArea)
			::	OffsetOf
				(	i_vMemberName
				)
			;
		}

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
		static auto constexpr
		(	OffsetOf
		)	(	t_tName
					i_vMemberName
			)
		->	Meta::USize
		{	if	constexpr
				(	Meta::ProtoStateless
					<	decltype
						(	::std::declval<t_tDerived>()
							[	t_tName{}
							]
						)
					>
				)
				return 0uz;
			else
				return
					sizeof(t_tDerived::NorthArea)
				+	decltype(t_tDerived::SouthArea)
				::	OffsetOf
					(	i_vMemberName
					)
				;
		}

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
		using NorthAccess<t_tpNorthName, LayoutFork>::operator[]...;
		using NorthAccess<t_tpNorthName, LayoutFork>::OffsetOf...;
		using SouthAccess<t_tpSouthName, LayoutFork>::operator[]...;
		using SouthAccess<t_tpSouthName, LayoutFork>::OffsetOf...;

		Layout<Member<t_tpNorthName, t_tpNorthData>...>
			NorthArea
		;

		Layout<Member<t_tpSouthName, t_tpSouthData>...>
			SouthArea
		;
	};

	template
		<	typename
			...	t_tpMember
		>
	struct
		Layout
	:	LayoutFork
		<	SplitLayoutNorth<t_tpMember...>
		,	SplitLayoutSouth<t_tpMember...>
		>
	{
		using
			LayoutFork
			<	SplitLayoutNorth<t_tpMember...>
			,	SplitLayoutSouth<t_tpMember...>
			>
		::	operator
			[]
		;

		using
			LayoutFork
			<	SplitLayoutNorth<t_tpMember...>
			,	SplitLayoutSouth<t_tpMember...>
			>
		::	OffsetOf
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
