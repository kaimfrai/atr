export module Evaluation.Virtual.Ellipse;

import Evaluation.Virtual.CircularShape;

import Evaluation.Dependency.DataTypes;

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

		[[nodiscard]]
		auto constexpr inline
		(	GetHeight
		)	()	const
			noexcept
		->	Float const
			&
			override
		{	return
				Height
			;
		}
	};
}
