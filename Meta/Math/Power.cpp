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
				i_vBase
		,	unsigned
				i_vExponent
		)
		noexcept
	->	decltype(i_vBase)
	{
		using
			tResult
		=	decltype(i_vBase)
		;

		auto static constexpr
		&	rMaxExponent
		=	MaxExponent
			<	tResult
			>
		;

		if	(	(	i_vExponent
				>=	rMaxExponent
				)
			and	(	Abs(i_vBase)
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
			vResult
		{	1
		};
		auto
			vExponentMask
		=	::std::bit_ceil
			(	rMaxExponent
			)
		>>	1u
		;
		do
		{
			bool const
				vBitSet
			=	i_vExponent
			>=	vExponentMask
			;

			(	vResult
			*=	(	vBitSet
				*	i_vBase
				+	not
					vBitSet
				)
			*	vResult
			);

			(	i_vExponent
			&=	compl
				vExponentMask
			);

			(	vExponentMask
			>>=	1u
			);

		}	while
			(	vExponentMask
			)
		;
		return
			vResult
		;
	}
}
