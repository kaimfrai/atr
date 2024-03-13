export module Evaluation.CRTP.SeparateWidth;

export namespace
	Shapes2D
{
	struct
		SeparateWidth
	{
		float
			Width
		{};

		[[nodiscard]]
		auto constexpr inline
		(	GetWidth
		)	(	this SeparateWidth const
				&	i_rThis
			)
			noexcept
		->	float
		{	return
				i_rThis
				.	Width
			;
		}
	};
}
