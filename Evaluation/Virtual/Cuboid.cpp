export module Evaluation.Virtual.Cuboid;

import Evaluation.Virtual.Rectangle;
import Evaluation.Virtual.CubicBody;

import Evaluation.Dependency.CommonData;

export namespace
	Bodies3D
{
	struct
		Cuboid
	:	CubicBody
		<	Shapes2D::Rectangle
		>
	{
		float
			Depth
		{};

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
				&	i_rCoordinates
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
