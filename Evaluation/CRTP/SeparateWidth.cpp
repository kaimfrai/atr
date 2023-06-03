export module Evaluation.CRTP.SeparateWidth;

import Evaluation.Dependency.DataTypes;

export namespace
	Shapes2D
{
	struct
		SeparateWidth
	{
		Float
			Width
		;

		auto constexpr
		(	GetWidth
		)	()	const
			noexcept
		->	Float const
			&
		{	return
				Width
			;
		}
	};
}
