export module Meta.Arithmetic:Integer;

import Meta.Size;
import Std;

export namespace
	Meta
{
	USize constexpr inline
		BitsPerByte
	=	::std::numeric_limits<char8_t>::digits
	;

	auto constexpr
	(	ByteFloor
	)	(	USize
				i_nBits
		)
	->	USize
	{	return
		::std::max
		(	::std::bit_floor(i_nBits)
		,	BitsPerByte
		);
	}

	auto constexpr
	(	ByteCeil
	)	(	USize
				i_nBits
		)
	->	USize
	{	return
		::std::max
		(	::std::bit_ceil(i_nBits)
		,	BitsPerByte
		);
	}
}

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
				<	ByteCeil(t_nBitCount)
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
				<	ByteCeil(t_nBitCount)
				>{}
			)
		)
	;

	using
		SIntMax
	=	::SIntMax
	;
}
