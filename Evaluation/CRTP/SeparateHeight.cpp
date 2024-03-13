export module Evaluation.CRTP.SeparateHeight;

export namespace
	Shapes2D
{
	struct
		SeparateHeight
	{
		float
			Height
		{};

		[[nodiscard]]
		auto constexpr inline
		(	GetHeight
		)	(	this SeparateHeight const
				&	i_rThis
			)
			noexcept
		->	float
		{	return
				i_rThis
				.	Height
			;
		}
	};
}
