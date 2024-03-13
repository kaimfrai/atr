export module Evaluation.Virtual.Ellipsoid;

import Evaluation.Virtual.Ellipse;
import Evaluation.Virtual.SphericBody;

import Evaluation.Dependency.CommonData;

export namespace
	Bodies3D
{
	struct
		Ellipsoid
	:	SphericBody
		<	Shapes2D::Ellipse
		>
	{
		float
			Depth
		{};

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
				&	i_rCoordinates
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
