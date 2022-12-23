export module Meta.Arithmetic:Integer;

import Meta.Bit.ByteSize;
import Meta.Size;
import Std;

template
	<	::Meta::USize
			t_nBitCount
	>
struct
	BitCount
{};

auto constexpr
(	UInt
)	(	BitCount<8uz>
	)
->	::std::uint_least8_t
;

auto constexpr
(	UInt
)	(	BitCount<16uz>
	)
->	::std::uint_least16_t
;
auto constexpr
(	UInt
)	(	BitCount<32uz>
	)
->	::std::uint_least32_t
;
auto constexpr
(	UInt
)	(	BitCount<64uz>
	)
->	::std::uint_least64_t
;

#ifdef __GNUG__
auto constexpr
(	UInt
)	(	BitCount<128uz>
	)
->	unsigned __int128
;
using UIntMax = unsigned __int128;
#else
using UIntMax = ::std::uintmax_t;
#endif

auto constexpr
(	SInt
)	(	BitCount<8uz>
	)
->	::std::int_least8_t
;

auto constexpr
(	SInt
)	(	BitCount<16uz>
	)
->	::std::int_least16_t
;
auto constexpr
(	SInt
)	(	BitCount<32uz>
	)
->	::std::int_least32_t
;
auto constexpr
(	SInt
)	(	BitCount<64uz>
	)
->	::std::int_least64_t
;

#ifdef __GNUG__
auto constexpr
(	SInt
)	(	BitCount<128uz>
	)
->	__int128
;
using SIntMax = __int128;
#else
using SIntMax = ::std::intmax_t;
#endif

export namespace
	Meta
{
	template
		<	USize
				t_nBitCount
		>
	using
		UInt
	=	decltype
		(	::UInt
			(	::BitCount
				<	std::bit_ceil(t_nBitCount / Bit::ByteSize + (0uz != t_nBitCount % Bit::ByteSize)) * Bit::ByteSize
				>{}
			)
		)
	;

	using
		UIntMax
	=	::UIntMax
	;

	template
		<	USize
				t_nBitCount
		>
	using
		SInt
	=	decltype
		(	::SInt
			(	::BitCount
				<	std::bit_ceil(t_nBitCount / Bit::ByteSize + (0uz != t_nBitCount % Bit::ByteSize)) * Bit::ByteSize
				>{}
			)
		)
	;

	using
		SIntMax
	=	::SIntMax
	;
}
