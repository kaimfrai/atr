export module Evaluation.CRTP.PyramidicBody;

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
		PyramidicBody
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
			Fraction
			<	1uz
			,	3uz
			>{};
		}
	};
}
