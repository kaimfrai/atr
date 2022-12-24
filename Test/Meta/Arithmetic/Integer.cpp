import Meta.Arithmetic.Integer;
import Meta.Bit.Count;
import Meta.Byte.Count;

import Std;

using namespace ::Meta;

static_assert(sizeof(UInt<8_bits>) <= sizeof(std::uint_least8_t));
static_assert(sizeof(UInt<16_bits>) <= sizeof(std::uint_least16_t));
static_assert(sizeof(UInt<32_bits>) <= sizeof(std::uint_least32_t));
static_assert(sizeof(UInt<64_bits>) <= sizeof(std::uint_least64_t));

static_assert(sizeof(UInt<Bits(Bytes(sizeof(UIntMax)))>) >= sizeof(std::uint_least64_t));

static_assert(std::is_unsigned_v<UInt<8_bits>>);
static_assert(std::is_unsigned_v<UInt<16_bits>>);
static_assert(std::is_unsigned_v<UInt<32_bits>>);
static_assert(std::is_unsigned_v<UInt<64_bits>>);

static_assert(sizeof(SInt<8_bits>) <= sizeof(std::int_least8_t));
static_assert(sizeof(SInt<16_bits>) <= sizeof(std::int_least16_t));
static_assert(sizeof(SInt<32_bits>) <= sizeof(std::int_least32_t));
static_assert(sizeof(SInt<64_bits>) <= sizeof(std::int_least64_t));

static_assert(sizeof(SInt<Bits(Bytes(sizeof(SIntMax)))>) >= sizeof(std::int_least64_t));

static_assert(std::is_signed_v<SInt<8_bits>>);
static_assert(std::is_signed_v<SInt<16_bits>>);
static_assert(std::is_signed_v<SInt<32_bits>>);
static_assert(std::is_signed_v<SInt<64_bits>>);
