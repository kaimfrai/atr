export module Evaluation.Shared.PiFraction;

export import Meta.Integer;
export import Evaluation.Shared.DataTypes;
export import Std;

export
{
	Float constexpr
		π
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
		πFraction
	{
		constexpr
		auto
			operator()
			()	const
		->	Float
		{
			return
				π
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