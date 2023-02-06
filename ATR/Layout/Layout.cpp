export module ATR.Layout.Layout;

import ATR.Member.Info;

import Meta.Size;
import Meta.Memory.Size;
import Meta.Memory.Size.Compare;
import Meta.Memory.Size.Arithmetic;
import Meta.Token.Type;
import Meta.Math.Prev;
import Meta.Trait.BitAlign;
import Meta.Trait.BitSize;
import Meta.Byte.Buffer;
import Meta.Token.Specifier;

import Std;

using ::Meta::Math::Prev;
using ::Meta::Type;
using ::Meta::USize;
using ::Meta::BitAlign_Of;
using ::Meta::BitSize_Of;
using ::Meta::Specifier::Mut;

using namespace ::Meta::Literals;

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
		...	t_tpMember
	,	::std::size_t
		...	t_npIndex
	,	::std::size_t
			t_nOffset
		=	0uz
	>
[[nodiscard]]
auto constexpr
(	SplitLayoutType
)	(	::std::index_sequence<t_npIndex...>
	,	::std::index_sequence<t_nOffset>
		=	{}
	)
	noexcept
{
	static_assert(sizeof...(t_tpMember) > sizeof...(t_npIndex));
	::std::array<::Meta::TypeID, sizeof...(t_tpMember)> constexpr
		vTypes
	{	Type<t_tpMember>
		...
	};
	return
	::ATR::Layout
	<	::Meta::RestoreTypeEntity
		<	vTypes
			[	t_npIndex
			+	t_nOffset
			]
		>
		...
	>();
};

[[nodiscard]]
auto constexpr
(	LayoutSplitIndex
)	(	::std::initializer_list
		<	::ATR::Member::Alignment
		>	i_vAlignList
	)
	noexcept
->	USize
{
	auto const
		aFirst
	=	begin(i_vAlignList)
	;
	auto const
		aLast
	=	::std::prev
		(	i_vAlignList.end()
		)
	;
	if	(	*aFirst
		==	*aLast
		)
		return
		::std::bit_floor<Meta::USize>
		(	Prev
			(	i_vAlignList
			.	size()
			)
		);
	else
	{	auto const
			aSplitPoint
		=	::std::upper_bound
			(	aFirst
			,	end(i_vAlignList)
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

export namespace
	ATR
{
	template
		<	typename
			...	t_tpMember
		>
	struct
		Layout
	{
		static USize constexpr
			SplitIndex
		=	LayoutSplitIndex
			({	::ATR::Member::Alignment
				{	BitAlign_Of
					(	Type
						<	t_tpMember
						>
					)
				}
				...
			})
		;

		using
			NorthType
		=	decltype
			(	SplitLayoutType<t_tpMember...>
				(	::std::make_index_sequence
					<	SplitIndex
					>{}
				)
			)
		;

		NorthType
			NorthArea
		;

		using
			SouthType
		=	decltype
			(	SplitLayoutType<t_tpMember...>
				(	::std::make_index_sequence
					<	sizeof...(t_tpMember)
					-	SplitIndex
					>{}
				,	::std::index_sequence
					<	SplitIndex
					>{}
				)
			)
		;

		SouthType
			SouthArea
		;
	};

	template
		<>
	struct
		Layout<>
	{};

	template
		<	typename
				t_tData
		>
	struct
		Layout
		<	t_tData
		>
	{
		t_tData
			Value
		;
	};

	template
		<	typename
				t_tData
		>
	struct
		Layout
		<	t_tData const
		>
	:	Layout<t_tData>
	{
		auto& operator=(Layout) = delete;
	};

	template
		<	typename
				t_tData
		>
	struct
		Layout
		<	Mut<t_tData>
		>
	{
		mutable
		t_tData
			Value
		;
	};

	template
		<	typename
				t_tData
		,	USize
				t_nExtent
		>
	struct
		Layout
		<	Mut
			<	t_tData
					[	t_nExtent
					]
			>
		>
	{
		mutable
		::std::array<t_tData, t_nExtent>
			Value
		;
	};

	template
		<	typename
				t_tData
		,	USize
				t_nExtent
		>
	struct
		Layout
		<	t_tData
				[	t_nExtent
				]
		>
	{
		::std::array<t_tData, t_nExtent>
			Value
		;
	};

	template
		<	typename
				t_tData
		,	USize
				t_nExtent
		>
	struct
		Layout
		<	t_tData const
				[	t_nExtent
				]
		>
	:	Layout
		<	t_tData
				[	t_nExtent
				]
		>
	{
		auto& operator=(Layout) = delete;
	};

	template
		<	typename
			...	t_tpBitField
		>
	requires
		(	...
		and	(	1_bit
			==	BitAlign_Of
				(	Type<t_tpBitField>
				)
			)
		)
	struct
		Layout
		<	t_tpBitField
			...
		>
	{
		static auto constexpr
			BitSize
		=(	0_bit
		+	...
		+	BitSize_Of
			(	Type<t_tpBitField>
			)
		);

		// must be mutable in case one bitfield is mutable
		mutable ::Meta::Byte::Buffer<BitSize>
			Buffer
		;
	};
}
