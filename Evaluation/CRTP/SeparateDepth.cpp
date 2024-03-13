export module Evaluation.CRTP.SeparateDepth;

export namespace
	Bodies3D
{
	struct
		SeparateDepth
	{
		float
			Depth
		{};

		[[nodiscard]]
		auto constexpr inline
		(	GetDepth
		)	(	this SeparateDepth const
				&	i_rThis
			)
			noexcept
		->	float
		{	return
				i_rThis
				.	Depth
			;
		}
	};
}
