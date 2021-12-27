export module Meta.Integer;

import Std.CStdInt;

namespace
	Meta
{
	export using
		USize
	=	decltype(0uz)
	;

	export using
		SSize
	=	decltype(0z)
	;

	template
		<	USize
		>
	struct
		Integer
	{};

	template
		<	USize
				t_nBitCount
		>
	requires
		(t_nBitCount <= 8uz)
	struct
		Integer
		<	t_nBitCount
		>
	{
		using UnsignedType = ::std::uint_least8_t;
		using SignedType = ::std::int_least8_t;
	};

	template
		<	USize
				t_nBitCount
		>
	requires
		(t_nBitCount > 8uz)
	and	(t_nBitCount <= 16uz)
	struct
		Integer
		<	t_nBitCount
		>
	{
		using UnsignedType = ::std::uint_least16_t;
		using SignedType = ::std::int_least16_t;
	};

	template
		<	USize
				t_nBitCount
		>
	requires
		(t_nBitCount > 16uz)
	and	(t_nBitCount <= 32uz)
	struct
		Integer
		<	t_nBitCount
		>
	{
		using UnsignedType = ::std::uint_least32_t;
		using SignedType = ::std::int_least32_t;
	};

	template
		<	USize
				t_nBitCount
		>
	requires
		(t_nBitCount > 32uz)
	and	(t_nBitCount <= 64uz)
	struct
		Integer
		<	t_nBitCount
		>
	{
		using UnsignedType = ::std::uint_least64_t;
		using SignedType = ::std::int_least64_t;
	};

	export template
		<	USize
				t_nBitCount
		>
	using
		UInt
	=	typename
		Integer
		<	t_nBitCount
		>
	::	UnsignedType
	;

	export template
		<	USize
				t_nBitCount
		>
	using
		SInt
	=	typename
		Integer
		<	t_nBitCount
		>
	::	SignedType
	;

	export auto constexpr
	(	Power
	)	(	UInt<64uz>
				i_nBase
		,	UInt<64uz>
				i_nExponent
		)
	->	UInt<64uz>
	{
		if	(	i_nExponent
			==	0ull
			)
			return 1ull;
		else
		if	(	i_nExponent
			==	1ul
			)
			return
				i_nBase
			;
		else
		{
			auto const
				nUnevenPower
			=	Power
				(	i_nBase
				,	i_nExponent % 2ull
				)
			;
			auto const
				nHalfPower
			=	Power
				(	i_nBase
				,	i_nExponent / 2ull
				)
			;
			return
				nUnevenPower
			*	nHalfPower
			*	nHalfPower
			;
		}
	}

	export auto constexpr
	(	CongruentInteger
	)	(	SSize
				i_nNumerator
		,	USize
				i_nRingSize
		)
	->	USize
	{

		bool const
			bNegative
		=	(	i_nNumerator
			<	0z
			)
		;

		USize const
			nPositiveIndex
		=	(	bNegative
			?	(	static_cast<USize>
					(	-
						i_nNumerator
					)
				)
			:	static_cast<USize>
				(	i_nNumerator
				)
			)
		;
		USize const
			nRemainder
		=	(	nPositiveIndex
			%	i_nRingSize
			)
		;

		return
		(	(	bNegative
			and (	nRemainder
				!=	0uz
				)
			)
		?	(	i_nRingSize
			-	nRemainder
			)
		:	nRemainder
		);
	}
}