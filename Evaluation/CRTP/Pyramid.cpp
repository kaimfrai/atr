export module Evaluation.CRTP.Pyramid;

import Evaluation.Dependency.CommonData;
import Evaluation.CRTP.Triangle;
import Evaluation.CRTP.PyramidicBody;
import Evaluation.CRTP.SeparateDepth;

export namespace
	Bodies3D
{
	struct
		Pyramid
	:	PyramidicBody
		<	Shapes2D::Triangle
		>
	,	SeparateDepth
	{
		explicit(false) constexpr inline
		(	Pyramid
		)	()
			noexcept
		=	default;

		explicit(true) constexpr inline
		(	Pyramid
		)	(	RGBAColor const
				&	i_rColor
			,	Point const
				&	i_rPoint
			,	float
					i_vHeight
			,	float
					i_vWidth
			,	float
					i_vDepth
			)
			noexcept
		:	PyramidicBody
			{	i_rColor
			,	i_rPoint
			,	i_vHeight
			,	i_vWidth
			}
		,	SeparateDepth
			{	i_vDepth
			}
		{}
	};
}
