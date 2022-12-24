export module Meta.Arithmetic:Integer;

import Meta.Bit.Count;
import Meta.Byte.Count;

import Std;

template
	<	auto
			t_nCount
	>
auto constexpr
(	UInt
)	(	::Meta::Bit::Count<t_nCount>
	)
=	delete;

auto constexpr
(	UInt
)	(	::Meta::Byte::Count<sizeof(::std::uint_least8_t)>
	)
->	::std::uint_least8_t
;

auto constexpr
(	UInt
)	(	::Meta::Byte::Count<sizeof(::std::uint_least16_t)>
	)
->	::std::uint_least16_t
;
auto constexpr
(	UInt
)	(	::Meta::Byte::Count<sizeof(::std::uint_least32_t)>
	)
->	::std::uint_least32_t
;
auto constexpr
(	UInt
)	(	::Meta::Byte::Count<sizeof(::std::uint_least64_t)>
	)
->	::std::uint_least64_t
;

#ifdef __GNUG__
auto constexpr
(	UInt
)	(	::Meta::Byte::Count<sizeof(unsigned __int128)>
	)
->	unsigned __int128
;
using UIntMax = unsigned __int128;
#else
using UIntMax = ::std::uintmax_t;
#endif

template
	<	auto
			t_nCount
	>
auto constexpr
(	SInt
)	(	::Meta::Bit::Count<t_nCount>
	)
=	delete;

auto constexpr
(	SInt
)	(	::Meta::Byte::Count<sizeof(::std::int_least8_t)>
	)
->	::std::int_least8_t
;

auto constexpr
(	SInt
)	(	::Meta::Byte::Count<sizeof(::std::int_least16_t)>
	)
->	::std::int_least16_t
;
auto constexpr
(	SInt
)	(	::Meta::Byte::Count<sizeof(::std::int_least32_t)>
	)
->	::std::int_least32_t
;
auto constexpr
(	SInt
)	(	::Meta::Byte::Count<sizeof(::std::int_least64_t)>
	)
->	::std::int_least64_t
;

#ifdef __GNUG__
auto constexpr
(	SInt
)	(	::Meta::Byte::Count<sizeof(__int128)>
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
		<	Bits
				t_nBits
		>
	using
		UInt
	=	decltype
		(	::UInt
			(	Byte::Count
				<	Bytes(t_nBits).Ceil().get()
				>{}
			)
		)
	;

	using
		UIntMax
	=	::UIntMax
	;

	template
		<	Bits
				t_nBits
		>
	using
		SInt
	=	decltype
		(	::SInt
			(	Byte::Count
				<	Bytes(t_nBits).Ceil().get()
				>{}
			)
		)
	;

	using
		SIntMax
	=	::SIntMax
	;
}
