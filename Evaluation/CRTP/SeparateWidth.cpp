export module Evaluation.CRTP.SeparateWidth;

import Evaluation.Shared.DataTypes;

export namespace
	Shapes2D
{
	struct
		SeparateWidth
	{
		Float
			Width
		;

		auto
			GetWidth
			()	const
		noexcept
		->	Float const
			&
		{
			return
				Width
			;
		}
	};
}