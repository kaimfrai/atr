export module Meta.Integer;

import Std;

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
}

namespace
	Meta
{
	template
		<	USize
				t_nBitCount
		>
	static auto constexpr
	(	UIntZero
	)	()
	{	if	constexpr(t_nBitCount <= 16uz)
		{
			if	constexpr(t_nBitCount <= 8uz)
				return ::std::uint_least8_t{};
			else
				return ::std::uint_least16_t{};
		}
		else
		if	constexpr(t_nBitCount <= 32uz)
			return ::std::uint_least32_t{};
		else
		{
			static_assert
			(	t_nBitCount <= 64uz
			,	"Unsigned integers greater than 64 bits not supported!"
			);
			return ::std::uint_least64_t{};
		}
	}

	template
		<	USize
				t_nBitCount
		>
	static auto constexpr
	(	SIntZero
	)	()
	{	if	constexpr(t_nBitCount <= 16uz)
		{
			if	constexpr(t_nBitCount <= 8uz)
				return ::std::int_least8_t{};
			else
				return ::std::int_least16_t{};
		}
		else
		if	constexpr(t_nBitCount <= 32uz)
			return ::std::int_least32_t{};
		else
		{
			static_assert
			(	t_nBitCount <= 64uz
			,	"Signed integers greater than 64 bits not supported!"
			);
			return ::std::int_least64_t{};
		}
	}
}

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
		(	UIntZero<t_nBitCount>()
		)
	;

	template
		<	USize
				t_nBitCount
		>
	using
		SInt
	=	decltype
		(	SIntZero<t_nBitCount>()
		)
	;
}
