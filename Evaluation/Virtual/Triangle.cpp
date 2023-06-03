export module Evaluation.Virtual.Triangle;

import Evaluation.Virtual.TriangularShape;

import Evaluation.Dependency.DataTypes;

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
