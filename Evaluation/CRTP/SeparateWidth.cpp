export module Evaluation.CRTP.SeparateWidth;

export namespace
	Shapes2D
{
	struct
		SeparateWidth
	{
		float
			Width
		;

		[[nodiscard]]
		auto constexpr inline
		(	GetWidth
		)	()	const
			noexcept
		->	float const
			&
		{	return
				Width
			;
		}
	};
}
