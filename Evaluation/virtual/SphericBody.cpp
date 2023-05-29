export module Evaluation.Virtual.SphericBody;

import Evaluation.Virtual.ExtendedShape;

import Evaluation.Shared.DataTypes;
import Evaluation.Shared.PiFraction;

export namespace
	Bodies3D
{
	template
		<	typename
				t_tShape
		>
	struct
		SphericBody
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
				PiFraction
				<	1z
				,	6z
				>{}
			;
		}
	};
}