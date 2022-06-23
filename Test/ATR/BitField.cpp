import ATR;

namespace ATR
{
	template<>
	DefineMembers
	<	Member
		<	"0BoolBit"
		,	bool
		>
	+	Member
		<	"1MutBoolBit"
		,	Mutable<bool>
		>
	+	Member
		<	"2BitField31"
		,	BitField<31>
		>
	+	Member
		<	"3MutBitField31"
		,	Mutable
			<	BitField<31>
			>
		>
	>	extern
		LayoutConfig
		<	"BitFieldTest"
		>
	;
}

using namespace ATR::Literals;
using ATR::Bit::Reference;
using ::Meta::UInt;

using Offset = ::ATR::Bit::EOffset;
using Size = ::ATR::Bit::ESize;
using BitFieldTest = ::ATR::Type<"BitFieldTest">;

static_assert
(	sizeof(BitFieldTest)
==	sizeof(::std::uint_least32_t)
*	2
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest&>()
			[	"0BoolBit"_ID
			]
		)
	,	Reference<Size{1}, Offset{0}>
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest const&>()
			[	"0BoolBit"_ID
			]
		)
	,	bool
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest&&>()
			[	"0BoolBit"_ID
			]
		)
	,	bool
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest&>()
			[	"1MutBoolBit"_ID
			]
		)
	,	Reference<Size{1}, Offset{1}>
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest const&>()
			[	"1MutBoolBit"_ID
			]
		)
	,	Reference<Size{1}, Offset{1}>
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest&&>()
			[	"1MutBoolBit"_ID
			]
		)
	,	bool
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest&>()
			[	"2BitField31"_ID
			]
		)
	,	Reference<Size{31}, Offset{2}>
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest const&>()
			[	"2BitField31"_ID
			]
		)
	,	UInt<31uz>
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest&&>()
			[	"2BitField31"_ID
			]
		)
	,	UInt<31uz>
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest&>()
			[	"3MutBitField31"_ID
			]
		)
	,	Reference<Size{31}, Offset{1}>
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest const&>()
			[	"3MutBitField31"_ID
			]
		)
	,	Reference<Size{31}, Offset{1}>
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest&&>()
			[	"3MutBitField31"_ID
			]
		)
	,	UInt<31uz>
	>
);
