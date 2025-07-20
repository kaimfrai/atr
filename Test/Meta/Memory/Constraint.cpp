import Meta.Memory.Constraint;
import Meta.Memory.Size;
import Meta.Memory.Size.Compare;
import Meta.Memory.Alignment;
import Meta.Bit.Field;

import std;

using ::Meta::Memory::BitSize_Of;
using ::Meta::Memory::BitAlign_Of;
using ::Meta::Bit::Field;

using namespace ::Meta::Literals;

static_assert(BitSize_Of<void> == 0_bit);
static_assert(BitAlign_Of<void> == 0_align);

static_assert(BitSize_Of<void()> == 0_bit);
static_assert(BitAlign_Of<void()> == 0_align);

static_assert(BitSize_Of<bool> == 1_bit);
static_assert(BitAlign_Of<bool> == 1_align);

static_assert(BitSize_Of<bool[]> == 0_bit);
static_assert(BitAlign_Of<bool[]> == 1_align);

static_assert(BitSize_Of<bool[5]> == 5_bit);
static_assert(BitAlign_Of<bool[5]> == 1_align);

static_assert(BitSize_Of<char> == 8_bit);
static_assert(BitAlign_Of<char> == 4_align);

static_assert(BitSize_Of<char[5]> == 40_bit);
static_assert(BitAlign_Of<char[5]> == 4_align);

static_assert(BitSize_Of<std::int8_t> == 8_bit);
static_assert(BitAlign_Of<std::int8_t> == 4_align);

static_assert(BitSize_Of<std::int16_t> == 16_bit);
static_assert(BitAlign_Of<std::int16_t> == 5_align);

static_assert(BitSize_Of<std::int32_t> == 32_bit);
static_assert(BitAlign_Of<std::int32_t> == 6_align);

static_assert(BitSize_Of<std::int64_t> == 64_bit);
static_assert(BitAlign_Of<std::int64_t> == 7_align);

struct
	Empty
{};

static_assert(BitSize_Of<Empty> == 0_bit);
static_assert(BitAlign_Of<Empty> == 0_align);

union
	Union
{
	[[no_unique_address]]
	Empty _;
};

static_assert(BitSize_Of<Union> == 0_bit);
static_assert(BitAlign_Of<Union> == 0_align);

static_assert(BitSize_Of<Field<1_bit>> == 1_bit);
static_assert(BitAlign_Of<Field<1_bit>> == 1_align);

static_assert(BitSize_Of<Field<2_bit>> == 2_bit);
static_assert(BitAlign_Of<Field<2_bit>> == 2_align);

static_assert(BitSize_Of<Field<3_bit>> == 3_bit);
static_assert(BitAlign_Of<Field<3_bit>> == 1_align);

static_assert(BitSize_Of<Field<4_bit>> == 4_bit);
static_assert(BitAlign_Of<Field<4_bit>> == 3_align);

static_assert(BitSize_Of<Field<5_bit>> == 5_bit);
static_assert(BitAlign_Of<Field<5_bit>> == 1_align);

static_assert(BitSize_Of<Field<6_bit>> == 6_bit);
static_assert(BitAlign_Of<Field<6_bit>> == 2_align);

static_assert(BitSize_Of<Field<7_bit>> == 7_bit);
static_assert(BitAlign_Of<Field<7_bit>> == 1_align);

static_assert(BitSize_Of<Field<8_bit>> == 8_bit);
static_assert(BitAlign_Of<Field<8_bit>> == 4_align);

static_assert(BitSize_Of<Field<9_bit>> == 9_bit);
static_assert(BitAlign_Of<Field<9_bit>> == 1_align);

static_assert(BitSize_Of<Field<10_bit>> == 10_bit);
static_assert(BitAlign_Of<Field<10_bit>> == 2_align);

static_assert(BitSize_Of<Field<11_bit>> == 11_bit);
static_assert(BitAlign_Of<Field<11_bit>> == 1_align);

static_assert(BitSize_Of<Field<12_bit>> == 12_bit);
static_assert(BitAlign_Of<Field<12_bit>> == 3_align);

static_assert(BitSize_Of<Field<13_bit>> == 13_bit);
static_assert(BitAlign_Of<Field<13_bit>> == 1_align);

static_assert(BitSize_Of<Field<14_bit>> == 14_bit);
static_assert(BitAlign_Of<Field<14_bit>> == 2_align);

static_assert(BitSize_Of<Field<15_bit>> == 15_bit);
static_assert(BitAlign_Of<Field<15_bit>> == 1_align);

static_assert(BitSize_Of<Field<16_bit>> == 16_bit);
static_assert(BitAlign_Of<Field<16_bit>> == 5_align);

static_assert(BitSize_Of<Field<17_bit>> == 17_bit);
static_assert(BitAlign_Of<Field<17_bit>> == 1_align);

static_assert(BitSize_Of<Field<18_bit>> == 18_bit);
static_assert(BitAlign_Of<Field<18_bit>> == 2_align);

static_assert(BitSize_Of<Field<19_bit>> == 19_bit);
static_assert(BitAlign_Of<Field<19_bit>> == 1_align);

static_assert(BitSize_Of<Field<20_bit>> == 20_bit);
static_assert(BitAlign_Of<Field<20_bit>> == 3_align);

static_assert(BitSize_Of<Field<21_bit>> == 21_bit);
static_assert(BitAlign_Of<Field<21_bit>> == 1_align);

static_assert(BitSize_Of<Field<22_bit>> == 22_bit);
static_assert(BitAlign_Of<Field<22_bit>> == 2_align);

static_assert(BitSize_Of<Field<23_bit>> == 23_bit);
static_assert(BitAlign_Of<Field<23_bit>> == 1_align);

static_assert(BitSize_Of<Field<24_bit>> == 24_bit);
static_assert(BitAlign_Of<Field<24_bit>> == 4_align);
