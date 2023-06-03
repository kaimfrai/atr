export module Evaluation.Virtual.Circle;

import Evaluation.Virtual.CircularShape;

import Evaluation.Dependency.DataTypes;

export namespace
	Shapes2D
{
	struct
		Circle
	:	CircularShape
	{
		[[nodiscard]]
		auto constexpr inline
		(	GetHeight
		)	()	const
			noexcept
		->	Float const
			&
			override
		{	return
				Width
			;
		}
	};
}
