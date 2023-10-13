import ATR.Instance;
import ATR.Literals;

import Meta.Arithmetic.Integer;
import Meta.Bit.Field;
import Meta.Bit.Index;
import Meta.Bit.Reference;
import Meta.ID;
import Meta.Memory.Size;

import Std;

using ::Meta::Bit::Field;

using namespace ::Meta::Literals;

namespace
	ATR::Member
{
	auto constexpr inline
	(	Recompose
	)	(	ProtoComposer auto
			&&	o_rComposer
		,	ID<"BitFieldTest">
		)
	->	auto&&
	{	// TODO Rename Mut as it is no longer supported
		return
			o_rComposer
			.	Member("0BoolBit", Type<bool>)
			.	Member("1MutBoolBit", Type<bool>)
			.	Member("2BitField31", Type<Field<31_bit>>)
			.	Member("3MutBitField31", Type<Field<31_bit>>)
		;
	}
}

using namespace ::ATR::Literals;
using ::Meta::Bit::Reference;
using ::Meta::UInt;

using BitFieldTest = ::ATR::Instance<::Meta::ID<"BitFieldTest">>;

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
	,	bool
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest&&>()
			[	"1MutBoolBit"_id
			]
		)
	,	bool
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
	,	Field<31_bit>
	>
);

static_assert
(	::std::is_same_v
	<	decltype
		(	::std::declval<BitFieldTest&&>()
			[	"3MutBitField31"_id
			]
		)
	,	Field<31_bit>
	>
);
