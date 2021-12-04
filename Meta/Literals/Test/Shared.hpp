#pragma once

import Meta.Literals;
import Std.Algorithm;
import Std.Limits;

auto constexpr
(	Abs
)	(	long double
			i_nValue
	)
-> long double
{	if	(i_nValue < 0.0l)
		return -i_nValue;
	else
		return i_nValue;
}

auto constexpr
(	Approximate
)	(	long double
			i_nLeft
	,	long double
			i_nRight
	)
->	bool
{
	auto const
		nAbsLeft
	=	Abs(i_nLeft)
	;
	auto const
		nAbsRight
	=	Abs(i_nRight)
	;

	auto const
		nAbsMin
	=	std::min(nAbsLeft, nAbsRight)
	;
	auto const
		nAbsMax
	=	std::max(nAbsLeft, nAbsRight)
	;

	auto const
		nDifference
	=	nAbsMax
	-	nAbsMin
	;

	return
		nDifference
	<=	(	nAbsMin
		*	std::numeric_limits<long double>::epsilon()
		)
	;
}

template
	<	char
		...	t_npNumeric
	>
auto consteval
(	operator""_Test
)	()
{	return Meta::EvaluateNumericLiteral<t_npNumeric...>();	}
