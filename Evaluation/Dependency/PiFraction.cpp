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
		auto static constexpr
		(	operator()
		)	()
			noexcept
		->	Float
		{	return
				Pi
			*	static_cast<Float>(t_vNumerator)
			/	static_cast<Float>(t_vDenominator)
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
