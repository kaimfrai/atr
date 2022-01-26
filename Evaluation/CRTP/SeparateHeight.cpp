export module Evaluation.CRTP.SeparateHeight;

export import Evaluation.Shared.DataTypes;

export namespace
	Shapes2D
{
	struct
		SeparateHeight
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
		{
			return
				Height
			;
		}
	};
}
