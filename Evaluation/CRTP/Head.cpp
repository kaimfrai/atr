export module Evaluation.CRTP.Head;

import Evaluation.Dependency.CommonData;
import Evaluation.CRTP.BasicSphere;
import Evaluation.CRTP.Sphere;

export namespace
	Bodies3D
{
	struct
		Head
	:	BasicSphere
	{
		Sphere
			LeftEye
		{};
		Sphere
			RightEye
		{};

		explicit(false) constexpr inline
		(	Head
		)	()
			noexcept
		=	default;

		explicit(true) constexpr inline
		(	Head
		)	(	RGBAColor const
				&	i_rColor
			,	Point const
				&	i_rPoint
			,	float
					i_vHeight
			,	Sphere const
				&	i_rLeftEye
			,	Sphere const
				&	i_rRightEye
			)
			noexcept
		:	BasicSphere
			{	i_rColor
			,	i_rPoint
			,	i_vHeight
			}
		,	LeftEye
			{	i_rLeftEye
			}
		,	RightEye
			{	i_rRightEye
			}
		{}
	};
}
