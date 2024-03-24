export module Evaluation.Dependency.Fraction;

import Std;

export
{
	template
		<	::std::intmax_t
				t_vNumerator
			=	1z
		,	::std::intmax_t
				t_vDenominator
			=	1z
		>
	float constexpr inline
		Fraction
	=	static_cast<float>
		(	static_cast<double>
			(	t_vNumerator
			)
		/	static_cast<double>
			(	t_vDenominator
			)
		)
	;
}
