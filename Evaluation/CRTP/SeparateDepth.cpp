export module Evaluation.CRTP.SeparateDepth;

export namespace
	Bodies3D
{
	struct
		SeparateDepth
	{
		float
			Depth
		;

		[[nodiscard]]
		auto constexpr inline
		(	GetDepth
		)	()	const
			noexcept
		->	float const
			&
		{	return
				Depth
			;
		}
	};
}
