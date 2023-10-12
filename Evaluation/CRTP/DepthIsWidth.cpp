export module Evaluation.CRTP.DepthIsWidth;

export namespace
	Bodies3D
{
	struct
		DepthIsWidth
	{
		[[nodiscard]]
		auto constexpr inline
		(	GetDepth
		)	(	this auto const
				&	i_rBody
			)
			noexcept
		->	float
		{	return
				i_rBody
				.	Shape2D
				.	Width
			;
		}
	};
}
