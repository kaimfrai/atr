export module Evaluation.CRTP.HeightIsWidth;

export namespace
	Shapes2D
{
	struct
		HeightIsWidth
	{
		[[nodiscard]]
		auto constexpr inline
		(	GetHeight
		)	(	this auto const
				&	i_rShape
			)
			noexcept
		->	float
		{	return
				i_rShape
				.	Width
			;
		}
	};
}
