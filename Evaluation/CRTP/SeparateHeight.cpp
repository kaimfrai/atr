export module Evaluation.CRTP.SeparateHeight;

import Evaluation.Dependency.DataTypes;

export namespace
	Shapes2D
{
	struct
		SeparateHeight
	{
		Float
			Height
		;

		[[nodiscard]]
		auto constexpr
		(	GetHeight
		)	()	const
			noexcept
		->	Float const
			&
		{	return
				Height
			;
		}
	};
}
