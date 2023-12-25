export module Evaluation.CRTP.WidthIsHeight;

export namespace
	Shapes2D
{
	struct
		WidthIsHeight
	{
		[[nodiscard]]
		auto constexpr inline
		(	GetWidth
		)	(	this auto const
				&	i_rShape
			)
			noexcept
		->	float
		{	return
				i_rShape
				.	Height
			;
		}
	};
}
