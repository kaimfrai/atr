export module Evaluation.CRTP.SeparateWidth;

export import Evaluation.Shared;

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
