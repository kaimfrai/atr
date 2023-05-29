export module Evaluation.Dependency.PiFraction;

import Evaluation.Dependency.DataTypes;

import Std;

export
{
	Float constexpr
		Pi
	=	::std::numbers::pi_v
		<	Float
		>
	;

	template
		<	::std::ptrdiff_t
				t_nNumerator
			=	1z
		,	::std::ptrdiff_t
				t_nDenominator
			=	1z
		>
	struct
		PiFraction
	{
		[[nodiscard]]
		auto constexpr
			operator()
			()	const
			noexcept
		->	Float
		{	return
				Pi
			*	static_cast<Float>(t_nNumerator)
			/	static_cast<Float>(t_nDenominator)
			;
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
