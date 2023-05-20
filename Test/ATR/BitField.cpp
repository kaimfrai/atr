import ATR.Instance;
import ATR.Literals;

import Meta.Memory.Size;
import Meta.Arithmetic.Integer;
import Meta.Bit.Field;
import Meta.Bit.Index;
import Meta.Bit.Reference;
import Meta.Token.Specifier;
import Meta.Token.Type;
import Meta.ID;

import Std;

using ::Meta::Bit::Field;
using ::Meta::Specifier::Mut;

using namespace ::Meta::Literals;

namespace
	ATR::Member
{
	auto constexpr
	(	Configure
	)	(	ID<"BitFieldTest">
		,	auto
			&&	o_rConfig
		)
	->	auto&&
	{	return
		o_rConfig
			("0BoolBit", ::Meta::Type<bool>)
			("1MutBoolBit", ::Meta::Type<Mut<bool>>)
			("2BitField31", ::Meta::Type<Field<31_bit>>)
			("3MutBitField31", ::Meta::Type<Mut<Field<31_bit>>>)
		;
	}
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
==	(	sizeof(::std::uint_least32_t)
	*	2
	)
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest&>()
			[	"0BoolBit"_id
			]
		)
	,	Reference<bool, 0_bdx>
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest const&>()
			[	"0BoolBit"_id
			]
		)
	,	bool
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest&&>()
			[	"0BoolBit"_id
			]
		)
	,	bool
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest&>()
			[	"1MutBoolBit"_id
			]
		)
	,	Reference<bool, 1_bdx>
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest const&>()
			[	"1MutBoolBit"_id
			]
		)
	,	Reference<bool, 1_bdx>
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest&&>()
			[	"1MutBoolBit"_id
			]
		)
	,	// TODO this should be bool
		Reference<bool, 1_bdx>
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest&>()
			[	"2BitField31"_id
			]
		)
	,	Reference<Field<31_bit>, 2_bdx>
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest const&>()
			[	"2BitField31"_id
			]
		)
	,	Field<31_bit>
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest&&>()
			[	"2BitField31"_id
			]
		)
	,	Field<31_bit>
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest&>()
			[	"3MutBitField31"_id
			]
		)
	,	Reference<Field<31_bit>, 1_bdx>
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest const&>()
			[	"3MutBitField31"_id
			]
		)
	,	Reference<Field<31_bit>, 1_bdx>
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest&&>()
			[	"3MutBitField31"_id
			]
		)
	,	// TODO this should be a value
		Reference<Field<31_bit>, 1_bdx>
	>
);
