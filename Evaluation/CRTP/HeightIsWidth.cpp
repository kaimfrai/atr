export module Evaluation.CRTP.HeightIsWidth;

export namespace
	Shapes2D
{
	template
		<	typename
				t_tShape
		>
	struct
		HeightIsWidth
	{
		[[nodiscard]]
		auto constexpr inline
		(	GetHeight
		)	()	const
			noexcept
		->	float const
			&
		{	return
				static_cast
				<	t_tShape const
					*
				>(	this
				)
			->	Width
			;
		}
	};
}
