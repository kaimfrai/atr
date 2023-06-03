export module Evaluation.CRTP.SphericBody;

import Evaluation.Dependency.DataTypes;
import Evaluation.Dependency.PiFraction;
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
		SphericBody
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
			PiFraction
			<	1z
			,	6z
			>{};
		}
	};
}
