export module Evaluation.SOAReplication.Rectangle;

import Evaluation.SOAReplication.Tag;
import Evaluation.SOAReplication.View32;

export namespace
	Bodies3D
{
	struct
		Rectangle
	{
		ETag static constexpr inline
			Tag
		=	ETag::Rectangle
		;

		float
			ColorRed
		;
		float
			ColorGreen
		;
		float
			ColorBlue
		;
		float
			ColorAlpha
		;
		float
			PointLateral
		;
		float
			PointLongitudinal
		;
		float
			PointVertical
		;
		float
			Height
		;
		float
			Width
		;
	};

	auto constexpr inline
	(	ConstructRectangle
	)	(	View32
				i_vView32
		)
		noexcept
	->	void
	{	i_vView32
			[0z, 0.0f]
			[1z, 0.0f]
			[2z, 0.0f]
			[3z, 0.0f]
			[4z, 0.0f]
			[5z, 0.0f]
			[6z, 0.0f]
			[7z, 0.0f]
			[8z, 0.0f]
		;
	}

	[[nodiscard]]
	auto constexpr inline
	(	ComputeVolumeRectangle
	)	(	View32
				i_vView32
		)
		noexcept
	->	float
	{
		float const
			vHeight
		=	i_vView32
			[	7z
			]
		;
		float const
			vWidth
		=	i_vView32
			[	8z
			]
		;

		return
			vHeight
		*	vWidth
		;
	}
}

