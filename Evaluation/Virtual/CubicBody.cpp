export module Evaluation.Virtual.CubicBody;

import Evaluation.Virtual.ExtendedShape;

import Evaluation.Dependency.DataTypes;
import Evaluation.Dependency.Fraction;

export namespace
	Bodies3D
{
	template
		<	typename
				t_tShape
		>
	struct
		CubicBody
	:	ExtendedShape
		<	t_tShape
		>
	{
		[[nodiscard]]
		auto constexpr inline
		(	GetComputeSizeMultiplier
		)	()	const
			noexcept
		->	Float
			override
		{	return
			Fraction<>
			{};
		}
	};
}
