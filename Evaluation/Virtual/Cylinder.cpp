export module Evaluation.Virtual.Cylinder;

import Evaluation.Virtual.Circle;
import Evaluation.Virtual.ExtendedShape;

import Evaluation.Dependency.CommonData;
import Evaluation.Dependency.PiFraction;

export namespace
	Bodies3D
{
	struct
		Cylinder
	:	ExtendedShape
		<	Shapes2D::Circle
		>
	{
		float
			Depth
		{};

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
				&	i_rCoordinates
			,	float
					i_vHeight
			,	float
					i_vDepth
			)
			noexcept
		:	ExtendedShape
			{	i_rColor
			,	i_rCoordinates
			,	i_vHeight
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

		[[nodiscard]]
		auto constexpr inline
		(	GetComputeSizeMultiplier
		)	()	const
			noexcept
		->	float
			override
		{	return
				PiFraction
				<	1z
				,	4z
				>{}
			;
		}
	};
}
