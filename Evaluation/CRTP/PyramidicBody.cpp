export module Evaluation.CRTP:PyramidicBody;

import Evaluation.Shared.DataTypes;
import Evaluation.Shared.Fraction;
export import :ExtendedShape;

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
		auto
			GetComputeVolumeMultiplier
			()	const
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
