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

		[[nodiscard]]
		auto constexpr inline
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
