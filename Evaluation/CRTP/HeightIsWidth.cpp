export module Evaluation.CRTP.HeightIsWidth;

export import Evaluation.Shared;

export namespace
	Shapes2D
{
	template
		<	typename
				t_tShape
		>
	struct
		HeightIsWidth
	{
		auto
			GetHeight
			()	const
		noexcept
		->	Float const
			&
		{
			return
				static_cast
				<	t_tShape const
					*
				>(	this
				)->	Width
			;
		}
	};
}
