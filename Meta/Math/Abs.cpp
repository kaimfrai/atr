export module Meta.Math.Abs;

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
	->	decltype(i_nArithmetic)
	{
		if	constexpr
			(	::std::is_unsigned_v
				<	decltype(i_nArithmetic)
				>
			)
			return
				i_nArithmetic
			;
		else
			return
				i_nArithmetic
			>=	0
			?	i_nArithmetic
			:	-i_nArithmetic
			;
	}
}
