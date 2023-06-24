export module Evaluation.CRTP.Cylinder;

import Evaluation.Dependency.PiFraction;
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
		[[nodiscard]]
		auto constexpr inline
		(	GetComputeSizeMultiplier
		)	()	const
			noexcept
		->	float
		{	return
			PiFraction
			<	1z
			,	4z
			>{};
		}
	};
}
