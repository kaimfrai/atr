export module Evaluation.CRTP.BasicBody;

export namespace
	Bodies3D
{
	struct
		BasicBody
	{
		[[nodiscard]]
		auto constexpr inline
		(	ComputeVolume
		)	(	this auto const
				&	i_rBody
			)
			noexcept
		->	float
		{	return
				i_rBody
				.	GetComputeSizeMultiplier
					()
			*	i_rBody
				.	GetHeight
					()
			*	i_rBody
				.	GetWidth
					()
			*	i_rBody
				.	GetDepth
					()
			;
		}
	};
}
