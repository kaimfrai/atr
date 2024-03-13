export module Evaluation.Virtual.Rectangle;

import Evaluation.Virtual.RectangularShape;
import Evaluation.Virtual.Shape3D;

import Evaluation.Dependency.CommonData;

export namespace
	Shapes2D
{
	struct
		Rectangle
	:	RectangularShape
	{
		float
			Width
		{};

		explicit(false) constexpr inline
		(	Rectangle
		)	()
			noexcept
		=	default;

		explicit(true) constexpr inline
		(	Rectangle
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
		:	RectangularShape
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
		Rectangle
	:	Shape3D
		<	::Shapes2D::Rectangle
		>
	{
		using
			Shape3D
		::	Shape3D
		;
	};
}
