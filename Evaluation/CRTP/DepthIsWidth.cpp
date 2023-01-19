export module Evaluation.CRTP:DepthIsWidth;

export import Evaluation.Shared;

export namespace
	Bodies3D
{
	template
		<	typename
				t_tBody
		>
	struct
		DepthIsWidth
	{
		auto
			GetDepth
			()	const
		noexcept
		->	Float const
			&
		{
			return
				static_cast
				<	t_tBody const
					*
				>(	this
				)->	Shapes2D
				.	Width
			;
		}
	};
}
