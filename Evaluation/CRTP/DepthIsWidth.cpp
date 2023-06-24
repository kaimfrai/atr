export module Evaluation.CRTP.DepthIsWidth;

export namespace
	Bodies3D
{
	template
		<	typename
				t_tBody
		>
	struct
		DepthIsWidth
	{
		[[nodiscard]]
		auto constexpr inline
		(	GetDepth
		)	()	const
			noexcept
		->	float const
			&
		{	return
				static_cast
				<	t_tBody const
					*
				>(	this
				)
			->	Shapes2D
			.	Width
			;
		}
	};
}
