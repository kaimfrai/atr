export module Evaluation.Shared:PiFraction;

export import :DataTypes;

import Meta.Size;

import Std;

export
{
	Float constexpr inline
		Pi
	=	std::numbers::pi_v
		<	Float
		>
	;

	template
		<	Meta::SSize
				t_nNumerator
			=	1z
		,	Meta::SSize
				t_nDenominator
			=	1z
		>
	struct
		PiFraction
	{
		constexpr
		auto
			operator()
			()	const
		->	Float
		{
			return
				Pi
			*	static_cast<Float>(t_nNumerator)
			/	static_cast<Float>(t_nDenominator)
			;
		}

		constexpr
			operator
			Float
			()	const
		{
			return
				operator()
				()
			;
		}
	};
}
