export module Evaluation.Virtual.Pyramid;

import Evaluation.Virtual.Triangle;
import Evaluation.Virtual.PyramidicBody;

import Evaluation.Dependency.CommonData;

export namespace
	Bodies3D
{
	struct
		Pyramid
	:	PyramidicBody
		<	Shapes2D::Triangle
		>
	{
		float
			Depth
		{};

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
				&	i_rCoordinates
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
			,	i_rCoordinates
			,	i_vHeight
			,	i_vWidth
			}
		,	Depth
			{	i_vDepth
			}
		{}

		[[nodiscard]]
		auto constexpr inline
		(	GetDepth
		)	()	const
			noexcept
		->	float
			override
		{	return
				Depth
			;
		}
	};
}
