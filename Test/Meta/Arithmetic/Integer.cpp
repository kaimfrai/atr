import Meta.Arithmetic.Integer;
import Meta.Memory.Size;

import Std;

using ::Meta::UInt;
using ::Meta::SInt;
using ::Meta::UIntMax;
using ::Meta::SIntMax;
using ::Meta::Memory::SizeOf;

using namespace ::Meta::Literals;

static_assert(sizeof(UInt<8_bit>) <= sizeof(std::uint_least8_t));
static_assert(sizeof(UInt<16_bit>) <= sizeof(std::uint_least16_t));
static_assert(sizeof(UInt<32_bit>) <= sizeof(std::uint_least32_t));
static_assert(sizeof(UInt<64_bit>) <= sizeof(std::uint_least64_t));

static_assert(sizeof(UInt<SizeOf<UIntMax>>) >= sizeof(std::uint_least64_t));

static_assert(std::is_unsigned_v<UInt<8_bit>>);
static_assert(std::is_unsigned_v<UInt<16_bit>>);
static_assert(std::is_unsigned_v<UInt<32_bit>>);
static_assert(std::is_unsigned_v<UInt<64_bit>>);

static_assert(sizeof(SInt<8_bit>) <= sizeof(std::int_least8_t));
static_assert(sizeof(SInt<16_bit>) <= sizeof(std::int_least16_t));
static_assert(sizeof(SInt<32_bit>) <= sizeof(std::int_least32_t));
static_assert(sizeof(SInt<64_bit>) <= sizeof(std::int_least64_t));

static_assert(sizeof(SInt<SizeOf<SIntMax>>) >= sizeof(std::int_least64_t));

static_assert(std::is_signed_v<SInt<8_bit>>);
static_assert(std::is_signed_v<SInt<16_bit>>);
static_assert(std::is_signed_v<SInt<32_bit>>);
static_assert(std::is_signed_v<SInt<64_bit>>);
