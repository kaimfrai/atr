export module Evaluation.Virtual:PyramidicBody;

export import :ExtendedShape;

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
		PyramidicBody
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
		{	return
			Fraction
			<	1uz
			,	3uz
			>{};
		}
	};
}

