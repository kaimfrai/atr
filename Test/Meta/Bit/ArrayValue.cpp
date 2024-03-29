import Meta.Bit.Array;
import Meta.Bit.Index;
import Meta.Bit.Field;
import Meta.Bit.Field.Compare;

import Meta.Memory.Size;
import Meta.Memory.Size.Arithmetic;
import Meta.Memory.Size.Scale;
import Meta.Byte.Buffer;
import Meta.Byte.Buffer.Range;

import Std;

using namespace ::Meta::Literals;

using Array = ::Meta::Bit::ArrayValue<1_bit, 31>;

auto constexpr inline
	None
=	::std::bit_cast<Array>(0x00000000)
;

auto constexpr inline
	Some
=	::std::bit_cast<Array>(0xEEEEEEEE)
;

auto constexpr inline
	All
=	::std::bit_cast<Array>(0x7FFFFFFF)
;
static_assert(None.none());
static_assert(not Some.none());
static_assert(not All.none());

static_assert(not None.any());
static_assert(Some.any());
static_assert(All.any());

static_assert(not None.all());
static_assert(not Some.all());
static_assert(All.all());


::Meta::Byte::Buffer<16_bit * 8 + 3_bdx> constexpr inline
	Buffer
{	static_cast<::std::byte>(0x7A << 3)
,	static_cast<::std::byte>(0x7A >> 5)
,	{}, {}, {}, {}
,	{}, {}, {}, {}
,	{}, {}, {}, {}
,	{}, {}, {}
};

static_assert
(	::Meta::Bit::CopyArray
	(	::Meta::Bit::ArrayConstReference
		<	16_bit
		,	8
		,	3_bdx
		>{	begin(Buffer)
		}
	)[	0uz
	]
==	::Meta::Bit::Field<16_bit>{0x7A}
);
