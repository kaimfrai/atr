export module Evaluation.CRTP.Shape3D;

import Evaluation.CRTP.ExtendedShape;

export namespace
	Bodies3D
{
	template
		<	typename
				t_tShape
		>
	struct
		Shape3D
	:	ExtendedShape
		<	t_tShape
		>
	{
		using
			ExtendedShape
			<	t_tShape
			>
		::	ExtendedShape
		;

		[[nodiscard]]
		auto static constexpr inline
		(	GetDepth
		)	()
			noexcept
		->	float
		{	return
				1.0f
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetComputeSizeMultiplier
		)	(	this Shape3D const
				&	i_rShape
			)
			noexcept
		->	float
		{	return
				i_rShape
				.	Shape2D
				.	GetComputeSizeMultiplier
					()
			;
		}
	};
}
