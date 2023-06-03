export module Meta.Math.Power;

import Meta.Math.Sign;
import Meta.Math.Abs;

import Std;

export namespace
	Meta::Math
{
	template
		<	typename
				t_tArithmetic
		>
	auto constexpr inline
		MaxExponent
	=	Unsigned
		(	::std::numeric_limits
			<	t_tArithmetic
			>
		::	max_exponent
		)
	;

	template
		<	::std::integral
				t_tArithmetic
		>
	auto constexpr inline
		MaxExponent
		<	t_tArithmetic
		>
	=	Unsigned
		(	::std::bit_width
			(	Unsigned
				(	::std::numeric_limits
					<	t_tArithmetic
					>
				::	max()
				)
			)
		)
	;

	[[nodiscard]]
	auto constexpr inline
	(	Power
	)	(	auto
				i_nBase
		,	unsigned
				i_nExponent
		)
		noexcept
	->	decltype(i_nBase)
	{
		using
			tResult
		=	decltype(i_nBase)
		;

		auto static constexpr
		&	rMaxExponent
		=	MaxExponent
			<	tResult
			>
		;

		if	(	(	i_nExponent
				>=	rMaxExponent
				)
			and	(	Abs(i_nBase)
				>=	::std::numeric_limits
					<	tResult
					>
				::	radix
				)
			)
		{	::std::unreachable
			();
		}

		tResult
			nResult
		{	1
		};
		auto
			nExponentMask
		=	::std::bit_ceil
			(	rMaxExponent
			)
		>>	1u
		;
		do
		{
			bool const
				nBitSet
			=	i_nExponent
			>=	nExponentMask
			;

			(	nResult
			*=	(	nBitSet
				*	i_nBase
				+	not
					nBitSet
				)
			*	nResult
			);

			(	i_nExponent
			&=	compl
				nExponentMask
			);

			(	nExponentMask
			>>=	1u
			);

		}	while
			(	nExponentMask
			)
		;
		return
			nResult
		;
	}
}
