export module Evaluation.Virtual.Triangle;

import Evaluation.Virtual.Shape3D;
import Evaluation.Virtual.TriangularShape;

import Evaluation.Dependency.CommonData;

export namespace
	Shapes2D
{
	struct
		Triangle
	:	TriangularShape
	{
		float
			Width
		{};

		explicit(false) constexpr inline
		(	Triangle
		)	()
			noexcept
		=	default;

		explicit(true) constexpr inline
		(	Triangle
		)	(	RGBAColor const
				&	i_rColor
			,	Point const
				&	i_rCoordinates
			,	float
					i_vHeight
			,	float
					i_vWidth
			)
			noexcept
		:	TriangularShape
			{	i_rColor
			,	i_rCoordinates
			,	i_vHeight
			}
		,	Width
			{	i_vWidth
			}
		{}

		[[nodiscard]]
		auto constexpr inline
		(	GetWidth
		)	()	const
			noexcept
		->	float
			override
		{	return
				Width
			;
		}
	};
}

export namespace
	Bodies3D
{
	struct
		Triangle
	:	Shape3D
		<	::Shapes2D::Triangle
		>
	{
		using
			Shape3D
		::	Shape3D
		;
	};
}
