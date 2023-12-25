export module Evaluation.CRTP.DepthIsHeight;

export namespace
	Bodies3D
{
	struct
		DepthIsHeight
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
				.	Height
			;
		}
	};
}
