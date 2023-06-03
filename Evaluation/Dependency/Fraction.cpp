export module Evaluation.Dependency.Fraction;

import Evaluation.Dependency.DataTypes;

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
		auto static constexpr
		(	operator()
		)	()
			noexcept
		->	Float
		{	return
			(	static_cast<Float>(t_vNumerator)
			/	static_cast<Float>(t_vDenominator)
			);
		}

		[[nodiscard]]
		explicit(false) constexpr
		(	operator
			Float
		)	()	const
			noexcept
		{	return
			operator()
			();
		}
	};
}
