export module Evaluation.CRTP.BasicBody;

export namespace
	Bodies3D
{
	template
		<	typename
				t_tBody
		>
	struct
		BasicBody
	{
		[[nodiscard]]
		auto constexpr inline
		(	ComputeVolume
		)	()	const
			noexcept
		->	float
		{
			t_tBody const
			&	rBody
			=	*static_cast
				<	t_tBody const
					*
				>(	this
				)
			;

			return
				rBody
				.	GetComputeSizeMultiplier
					()
			*	rBody
				.	GetDepth
					()
			*	rBody
				.	GetHeight
					()
			*	rBody
				.	GetWidth
					()
			;
		}
	};
}
