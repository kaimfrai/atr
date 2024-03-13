export module Evaluation.Virtual.Circle;

import Evaluation.Virtual.CircularShape;
import Evaluation.Virtual.Shape3D;

export namespace
	Shapes2D
{
	struct
		Circle
	:	CircularShape
	{
		using
			CircularShape
		::	CircularShape
		;

		[[nodiscard]]
		auto constexpr inline
		(	GetWidth
		)	()	const
			noexcept
		->	float
			override
		{	return
				Height
			;
		}
	};
}

export namespace
	Bodies3D
{
	struct
		Circle
	:	Shape3D
		<	::Shapes2D::Circle
		>
	{
		using
			Shape3D
		::	Shape3D
		;
	};
}
