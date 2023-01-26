import ATR.MemberList;
import ATR.LayoutConfig;
import ATR.Layout.Bit.Reference;
import ATR.Instance;
import ATR.Literals;

import Meta.Memory.Size;
import Meta.Arithmetic.Integer;
import Meta.Bit.Field;
import Meta.Bit.Index;
import Meta.Token.Specifier;

import Std;

using ::Meta::Bit::Field;
using ::ATR::Member;
using ::Meta::Specifier::Mut;

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
		,	Field<31_bit>
		>
	+	Member
		<	"3MutBitField31"
		,	Mut
			<	Field<31_bit>
			>
		>
	>	const extern
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
		Field<1_bit>
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
		Field<1_bit>
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
		Field<1_bit>
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
	,	Field<31_bit>
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest&&>()
			[	"2BitField31"_ID
			]
		)
	,	Field<31_bit>
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
	,	Field<31_bit>
	>
);
