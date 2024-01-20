export module Meta.Math.Abs;

import Meta.Math.Sign;
import Meta.Math.Next;

import Std;

export namespace
	Meta::Math
{
	[[nodiscard]]
	auto constexpr inline
	(	Abs
	)	(	auto
				i_vArithmetic
		)
		noexcept
	{
		using
			tArithmetic
		=	decltype
			(	i_vArithmetic
			)
		;
		if	constexpr
			(	::std::is_floating_point_v
				<	tArithmetic
				>
			)
		{	return
				i_vArithmetic
			>=	tArithmetic{}
			?	i_vArithmetic
			:	-i_vArithmetic
			;
		}
		else
		if	constexpr
			(	::std::is_unsigned_v
				<	tArithmetic
				>
			)
		{	return
				i_vArithmetic
			;
		}
		else
		{	return
				(	i_vArithmetic
				>=	tArithmetic{}
				)
			?	Unsigned
				(	i_vArithmetic
				)
			:	Next
				(	Unsigned
					(	-
						Next
						(	i_vArithmetic
						)
					)
				)
			;
		}
	}
}
