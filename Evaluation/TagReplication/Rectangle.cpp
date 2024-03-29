export module Evaluation.TagReplication.Rectangle;

import Evaluation.TagReplication.Tag;

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

	[[nodiscard]]
	auto constexpr inline
	(	ComputeVolumeRectangle
	)	(	void const
			*	i_aObject
		)
		noexcept
	->	float
	{
		Rectangle const
		*	aRectangle
		=	static_cast
			<	Rectangle const
				*
			>(	i_aObject
			)
		;

		return
			aRectangle
			->	Height
		*	aRectangle
			->	Width
		;
	}
}

