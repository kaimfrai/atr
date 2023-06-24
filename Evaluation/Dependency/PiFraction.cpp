export module Evaluation.Dependency.PiFraction;

import Std;

export
{
	float constexpr inline
		Pi
	=	::std::numbers::pi_v
		<	float
		>
	;

	template
		<	::std::ptrdiff_t
				t_vNumerator
			=	1z
		,	::std::ptrdiff_t
				t_vDenominator
			=	1z
		>
	struct
		PiFraction
	{
		[[nodiscard]]
		auto static constexpr inline
		(	operator()
		)	()
			noexcept
		->	float
		{	return
				Pi
			*	static_cast<float>(t_vNumerator)
			/	static_cast<float>(t_vDenominator)
			;
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
