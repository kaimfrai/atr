export module Evaluation.CRTP.Cone;

import Evaluation.Shared.PiFraction;
import Evaluation.CRTP.Circle;
import Evaluation.CRTP.ExtendedShape;
import Evaluation.CRTP.SeparateDepth;

export namespace
	Bodies3D
{
	struct
		Cone
	:	ExtendedShape
		<	Cone
		,	Shapes2D::Circle
		>
	,	SeparateDepth
	{
		auto
			GetComputeVolumeMultiplier
			()	const
		noexcept
		->	Float
		{
			return
				PiFraction
				<	1z
				,	12z
				>{}
			;
		}
	};
}
