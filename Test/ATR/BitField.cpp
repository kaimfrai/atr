import ATR.Member.List;
import ATR.Member.Union;
import ATR.Member.Definition;
import ATR.Instance;
import ATR.Literals;

import Meta.Memory.Size;
import Meta.Arithmetic.Integer;
import Meta.Bit.Field;
import Meta.Bit.Index;
import Meta.Bit.Reference;
import Meta.Token.Specifier;

import Std;

using ::Meta::Bit::Field;
using ::Meta::Specifier::Mut;

using namespace ::Meta::Literals;

namespace
	ATR::Member
{
	template<>
	Definition
	<	New
		<	"0BoolBit"
		,	bool
		>
	+	New
		<	"1MutBoolBit"
		,	Mut<bool>
		>
	+	New
		<	"2BitField31"
		,	Field<31_bit>
		>
	+	New
		<	"3MutBitField31"
		,	Mut
			<	Field<31_bit>
			>
		>
	>	const extern
		Definition_For
		<	"BitFieldTest"
		>
	;
}

using namespace ::ATR::Literals;
using ::Meta::Bit::Reference;
using ::Meta::UInt;

using BitFieldTest = ::ATR::Type<"BitFieldTest">;

static_assert
(	alignof(BitFieldTest)
==	alignof(char)
);
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
	,	Reference<1_bit, 1_bdx>
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest const&>()
			[	"1MutBoolBit"_ID
			]
		)
	,	Reference<1_bit, 1_bdx>
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest&&>()
			[	"1MutBoolBit"_ID
			]
		)
	,	// TODO this should be bool
		Reference<1_bit, 1_bdx>
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
	,	// TODO this should be a value
		Reference<31_bit, 1_bdx>
	>
);
