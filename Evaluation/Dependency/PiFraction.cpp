export module Evaluation.Dependency.PiFraction;

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
		PiFraction
	=	static_cast<float>
		(	::std::numbers::pi
		*	t_vNumerator
		/	t_vDenominator
		)
	;
}
