export module Meta.Arithmetic:Integer;

export import Std;

export namespace
	Meta
{
	using
		USize
	=	decltype(0uz)
	;

	using
		SSize
	=	decltype(0z)
	;

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
}
