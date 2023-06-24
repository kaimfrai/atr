export module Evaluation.CRTP.Cone;

import Evaluation.Dependency.DataTypes;
import Evaluation.Dependency.PiFraction;
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
		[[nodiscard]]
		auto constexpr inline
		(	GetComputeSizeMultiplier
		)	()	const
			noexcept
		->	Float
		{	return
			PiFraction
			<	1z
			,	12z
			>{};
		}
	};
}
