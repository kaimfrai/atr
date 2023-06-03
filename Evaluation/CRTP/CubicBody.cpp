export module Evaluation.CRTP.CubicBody;

import Evaluation.Dependency.DataTypes;
import Evaluation.Dependency.Fraction;
import Evaluation.CRTP.ExtendedShape;

export namespace
	Bodies3D
{
	template
		<	typename
				t_tBody
		,	typename
				t_tShape
		>
	struct
		CubicBody
	:	ExtendedShape
		<	t_tBody
		,	t_tShape
		>
	{
		auto constexpr
		(	GetComputeVolumeMultiplier
		)	()	const
			noexcept
		->	Float
		{	return
			Fraction<>
			{};
		}
	};
}
