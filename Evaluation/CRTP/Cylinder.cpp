export module Evaluation.CRTP.Cylinder;

import Evaluation.Shared.DataTypes;
import Evaluation.Shared.PiFraction;
import Evaluation.CRTP.Circle;
import Evaluation.CRTP.ExtendedShape;
import Evaluation.CRTP.SeparateDepth;

export namespace
	Bodies3D
{
	struct
		Cylinder
	:	ExtendedShape
		<	Cylinder
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
				,	4z
				>{}
			;
		}
	};
}
