export module Evaluation.Virtual.Head;

import Evaluation.Virtual.Sphere;

import Evaluation.Dependency.CommonData;

export namespace
	Bodies3D
{
	struct
		Head
	:	Sphere
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
				&	i_rCoordinates
			,	float
					i_vHeight
			,	Sphere const
				&	i_rLeftEye
			,	Sphere const
				&	i_rRightEye
			)
			noexcept
		:	Sphere
			{	i_rColor
			,	i_rCoordinates
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
