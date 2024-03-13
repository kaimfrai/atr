export module Evaluation.CRTP.Ellipsoid;

import Evaluation.Dependency.CommonData;
import Evaluation.CRTP.Ellipse;
import Evaluation.CRTP.SphericBody;
import Evaluation.CRTP.SeparateDepth;

export namespace
	Bodies3D
{
	struct
		Ellipsoid
	:	SphericBody
		<	Shapes2D::Ellipse
		>
	,	SeparateDepth
	{
		explicit(false) constexpr inline
		(	Ellipsoid
		)	()
			noexcept
		=	default;

		explicit(true) constexpr inline
		(	Ellipsoid
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
		:	SphericBody
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
