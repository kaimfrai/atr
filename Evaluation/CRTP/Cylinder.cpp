export module Evaluation.CRTP.Cylinder;

import Evaluation.Dependency.PiFraction;
import Evaluation.Dependency.CommonData;
import Evaluation.CRTP.Circle;
import Evaluation.CRTP.ExtendedShape;
import Evaluation.CRTP.SeparateDepth;

export namespace
	Bodies3D
{
	struct
		Cylinder
	:	ExtendedShape
		<	Shapes2D::Circle
		>
	,	SeparateDepth
	{
		explicit(false) constexpr inline
		(	Cylinder
		)	()
			noexcept
		=	default;

		explicit(true) constexpr inline
		(	Cylinder
		)	(	RGBAColor const
				&	i_rColor
			,	Point const
				&	i_rPoint
			,	float
					i_vHeight
			,	float
					i_vDepth
			)
			noexcept
		:	ExtendedShape
			{	i_rColor
			,	i_rPoint
			,	i_vHeight
			}
		,	SeparateDepth
			{	i_vDepth
			}
		{}

		[[nodiscard]]
		auto static constexpr inline
		(	GetComputeSizeMultiplier
		)	()
			noexcept
		->	float
		{	return
				PiFraction
				<	1z
				,	4z
				>
			;
		}
	};
}
