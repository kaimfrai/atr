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
	struct
		Fraction
	{
		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	()
			noexcept
		->	float
		{	return
			(	static_cast<float>(t_vNumerator)
			/	static_cast<float>(t_vDenominator)
			);
		}

		[[nodiscard]]
		explicit(false) constexpr inline
		(	operator
			float
		)	()	const
			noexcept
		{	return
			operator()
			();
		}
	};
}
