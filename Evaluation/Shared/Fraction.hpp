export module Evaluation.Shared:Fraction;

export import :DataTypes;

import Meta.Arithmetic.Size;

export
{
	template
		<	Meta::SSize
				t_nNumerator
			=	1z
		,	Meta::SSize
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
