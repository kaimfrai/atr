export module Evaluation.Virtual.Triangle;

import Evaluation.Virtual.TriangularShape;

import Evaluation.Shared.DataTypes;

export namespace
	Shapes2D
{
	struct
		Triangle
	:	TriangularShape
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
