import ATR;

import Meta.Bit.Size;
import Meta.Arithmetic.Integer;
import Meta.Arithmetic.BitField;
import Meta.Arithmetic.BitIndex;

import Std;

using ::Meta::Arithmetic::BitField;

using namespace ::Meta::Literals;

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
		,	Mut<bool>
		>
	+	Member
		<	"2BitField31"
		,	BitField<31_bit>
		>
	+	Member
		<	"3MutBitField31"
		,	Mut
			<	BitField<31_bit>
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
	,	Reference<1_bit, 0_bdx>
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest const&>()
			[	"0BoolBit"_ID
			]
		)
	,	//TODO make this bool
		//bool
		BitField<1_bit>
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest&&>()
			[	"0BoolBit"_ID
			]
		)
	,	//TODO make this bool
		//bool
		BitField<1_bit>
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest&>()
			[	"1MutBoolBit"_ID
			]
		)
	,	//TODO make this bool
		Reference<1_bit, 1_bdx>
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest const&>()
			[	"1MutBoolBit"_ID
			]
		)
	,	//TODO make this bool
		Reference<1_bit, 1_bdx>
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest&&>()
			[	"1MutBoolBit"_ID
			]
		)
	,	//TODO make this bool
		//bool
		BitField<1_bit>
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest&>()
			[	"2BitField31"_ID
			]
		)
	,	Reference<31_bit, 2_bdx>
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest const&>()
			[	"2BitField31"_ID
			]
		)
	,	BitField<31_bit>
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest&&>()
			[	"2BitField31"_ID
			]
		)
	,	BitField<31_bit>
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest&>()
			[	"3MutBitField31"_ID
			]
		)
	,	Reference<31_bit, 1_bdx>
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest const&>()
			[	"3MutBitField31"_ID
			]
		)
	,	Reference<31_bit, 1_bdx>
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest&&>()
			[	"3MutBitField31"_ID
			]
		)
	,	BitField<31_bit>
	>
);
