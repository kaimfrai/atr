export module Evaluation.Virtual:Ellipse;

export import :CircularShape;

import Evaluation.Shared.DataTypes;

export namespace
	Shapes2D
{
	struct
		Ellipse
	:	CircularShape
	{
		Float
			Height
		;

		auto
			GetHeight
			()	const
		noexcept
		->	Float const
			&
		override
		{
			return
				Height
			;
		}
	};
}
