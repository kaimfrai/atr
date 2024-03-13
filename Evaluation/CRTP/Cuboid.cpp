export module Evaluation.CRTP.Cuboid;

import Evaluation.Dependency.CommonData;
import Evaluation.CRTP.Rectangle;
import Evaluation.CRTP.CubicBody;
import Evaluation.CRTP.SeparateDepth;

export namespace
	Bodies3D
{
	struct
		Cuboid
	:	CubicBody
		<	Shapes2D::Rectangle
		>
	,	SeparateDepth
	{
		explicit(false) constexpr inline
		(	Cuboid
		)	()
			noexcept
		=	default;

		explicit(true) constexpr inline
		(	Cuboid
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
		:	CubicBody
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
