export module Evaluation.Virtual.CircularShape;

import Evaluation.Virtual.BasicShape;

import Evaluation.Shared.DataTypes;
import Evaluation.Shared.PiFraction;

export namespace
	Shapes2D
{
	struct
		CircularShape
	:	BasicShape
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
		override
		{
			return
				Width
			;
		}

		auto
			GetComputeAreaMultiplier
			()	const
		noexcept
		->	Float
		override
		{
			return
				PiFraction
				<	1z
				,	4z
				>{}
			;
		}
	};
}
