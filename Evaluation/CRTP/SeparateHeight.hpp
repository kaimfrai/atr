export module Evaluation.CRTP:SeparateHeight;

export import Evaluation.Shared;

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
