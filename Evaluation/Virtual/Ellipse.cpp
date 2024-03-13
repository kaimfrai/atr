export module Evaluation.Virtual.Ellipse;

import Evaluation.Virtual.CircularShape;
import Evaluation.Virtual.Shape3D;

import Evaluation.Dependency.CommonData;

export namespace
	Shapes2D
{
	struct
		Ellipse
	:	CircularShape
	{
		float
			Width
		{};

		explicit(false) constexpr inline
		(	Ellipse
		)	()
			noexcept
		=	default;

		explicit(true) constexpr inline
		(	Ellipse
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
		:	CircularShape
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
		Ellipse
	:	Shape3D
		<	::Shapes2D::Ellipse
		>
	{
		using
			Shape3D
		::	Shape3D
		;
	};
}
