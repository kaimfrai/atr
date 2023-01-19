export module Evaluation.CRTP:SeparateDepth;

import Evaluation.Shared.DataTypes;

export namespace
	Bodies3D
{
	struct
		SeparateDepth
	{
		Float
			Depth
		;

		auto
			GetDepth
			()	const
		noexcept
		->	Float const
			&
		{
			return
				Depth
			;
		}
	};
}
