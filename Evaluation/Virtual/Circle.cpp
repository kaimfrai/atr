export module Evaluation.Virtual:Circle;

export import :CircularShape;

import Evaluation.Shared.DataTypes;

export namespace
	Shapes2D
{
	struct
		Circle
	:	CircularShape
	{
		auto
			GetHeight
			()	const
		noexcept
		->	Float const
			&
		override
		{
			return
				Width
			;
		}
	};
}
