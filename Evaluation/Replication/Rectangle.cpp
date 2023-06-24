export module Evaluation.Replication.Rectangle;

import Std;

export namespace
	Bodies3D
{
	struct
		Rectangle
	{
		float
			ColorAlpha
		;
		float
			ColorBlue
		;
		float
			ColorGreen
		;
		float
			ColorRed
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

