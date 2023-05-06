export module ATR.Layout;

import Meta.Size;
import Meta.Memory.Size;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size.PointerArithmetic;
import Meta.Memory.Size.Compare;
import Meta.Memory.Size.Cast;
import Meta.Memory.Alignment;
import Meta.Memory.Constraint;
import Meta.Token.Type;
import Meta.Token.TypeID;
import Meta.Math.Prev;
import Meta.Token.Specifier;
import Meta.Bit.Reference;
import Meta.Bit.Index;
import Meta.Bit.Field;
import Meta.Bit.Array;

import Std;

using ::Meta::Bit::ArrayReference;
using ::Meta::Bit::Reference;
using ::Meta::Math::Prev;
using ::Meta::Type;
using ::Meta::USize;
using ::Meta::Specifier::Mut;
using ::Meta::Memory::BitAlign_Of;
using ::Meta::Memory::BitSize_Of;
using ::Meta::ByteIndex;
using ::Meta::BitSize;

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
	::Meta::TypeID constexpr
		vTypes
		[]
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
		<	::Meta::Memory::Alignment
		>	i_vAlignList
	)
	noexcept
->	USize
{
	auto const
		aFirst
	=	i_vAlignList
	.	begin
		()
	;
	auto const
		aLast
	=	::std::prev
		(	i_vAlignList
		.	end
			()
		)
	;
	if	(	*aFirst
		==	*aLast
		)
		return
		::std::bit_floor<Meta::USize>
		(	Prev
			(	i_vAlignList
			.	size
				()
			)
		);
	else
	{	auto const
			aSplitPoint
		=	::std::upper_bound
			(	aFirst
			,	i_vAlignList
			.	end
				()
			,	*aFirst
			,	::std::greater<>
				{}
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
			({	BitAlign_Of
				<	t_tpMember
				>
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
	{
		t_tData
			Value
		;

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
	{
		::std::array<t_tData, t_nExtent>
			Value
		;

		auto& operator=(Layout) = delete;
	};

	template
		<	typename
				t_tFirstBitField
		,	typename
			...	t_tpBitField
		>
	requires
		(	BitAlign_Of<::std::byte>
		>	BitAlign_Of
			<	t_tFirstBitField
			>
		)
	struct
		Layout
		<	t_tFirstBitField
		,	t_tpBitField
			...
		>
	{
		::Meta::ByteSize static constexpr
			ByteSize
		=	(	BitSize_Of
				<	t_tFirstBitField
				>
			+	...
			+	BitSize_Of
				<	t_tpBitField
				>
			)
		;

		// must be mutable in case one bitfield is mutable
		mutable
		::std::byte
			Buffer
			[	ByteSize
				.	get
					()
			]
		;
	};
}
