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
		<	Shape3D
			<	t_tShape
			>
		,	t_tShape
		>
	{
		[[nodiscard]]
		auto constexpr inline
		(	GetDepth
		)	()	const
			noexcept
		->	float const
			&
		{
			float const static constexpr
				vDepth
			=	1.0
			;
			return
				vDepth
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetComputeSizeMultiplier
		)	()	const
			noexcept
		->	float
		{	return
				this
				->	Shape2D
				.	GetComputeSizeMultiplier
					()
			;
		}
	};
}
