export module Evaluation.Shared.Fraction;

import Evaluation.Shared.DataTypes;

import Std;

export
{
	template
		<	::std::intmax_t
				t_nNumerator
			=	1z
		,	::std::intmax_t
				t_nDenominator
			=	1z
		>
	struct
		Fraction
	{
		auto constexpr
			operator()
			()	const
		->	Float
		{	return
			(	static_cast<Float>(t_nNumerator)
			/	static_cast<Float>(t_nDenominator)
			);
		}

		constexpr
			operator
			Float
			()	const
		{	return operator()();	}
	};
}
