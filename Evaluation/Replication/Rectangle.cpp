export module Evaluation.Replication.Rectangle;

import Evaluation.Dependency.DataTypes;

import Std;

export namespace
	Bodies3D
{
	struct
		Rectangle
	{
		Float
			Height
		;
		Float
			Width
		;
		RGBAColor
			Color
		;
	};

	[[nodiscard]]
	auto constexpr inline
	(	ComputeVolumeRectangle
	)	(	void const
			*	i_aObject
		)
		noexcept
	->	Float
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

