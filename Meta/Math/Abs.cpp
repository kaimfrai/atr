export module Meta.Math.Abs;

import Meta.Math.Sign;
import Meta.Math.Next;

import Std;

export namespace
	Meta::Math
{
	[[nodiscard]]
	auto constexpr
	(	Abs
	)	(	auto
				i_nArithmetic
		)
		noexcept
	{
		using
			tArithmetic
		=	decltype
			(	i_nArithmetic
			)
		;
		if	constexpr
			(	::std::is_floating_point_v
				<	tArithmetic
				>
			)
		{	return
				i_nArithmetic
			>=	tArithmetic{}
			?	i_nArithmetic
			:	-i_nArithmetic
			;
		}
		else
		if	constexpr
			(	::std::is_unsigned_v
				<	tArithmetic
				>
			)
		{	return
				i_nArithmetic
			;
		}
		else
		{	return
				(	i_nArithmetic
				>=	tArithmetic{}
				)
			?	Unsigned
				(	i_nArithmetic
				)
			:	Next
				(	Unsigned
					(	-
						Next
						(	i_nArithmetic
						)
					)
				)
			;
		}
	}
}
