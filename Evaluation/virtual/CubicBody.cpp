export module Evaluation.Virtual.CubicBody;

import Evaluation.Virtual.ExtendedShape;

import Evaluation.Shared.DataTypes;
import Evaluation.Shared.Fraction;

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
		auto
			GetComputeVolumeMultiplier
			()	const
		noexcept
		->	Float
		override
		{
			return
				Fraction
				<>{}
			;
		}
	};
}