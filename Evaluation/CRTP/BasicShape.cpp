export module Evaluation.CRTP.BasicShape;

export namespace
	Shapes2D
{
	struct
		RGBAColor
	{
		float
			Red
		;
		float
			Green
		;
		float
			Blue
		;
		float
			Alpha
		;
	};

	template
		<	typename
				t_tShape
		>
	struct
		BasicShape
	{
		RGBAColor
			Color
		;

		[[nodiscard]]
		auto constexpr inline
		(	ComputeArea
		)	()	const
			noexcept
		->	float
		{
			t_tShape const
			&	rBody
			=	*static_cast
				<	t_tShape const
					*
				>(	this
				)
			;
			return
				rBody
				.	GetComputeSizeMultiplier
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
