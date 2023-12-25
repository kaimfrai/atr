export module Evaluation.Virtual.Shape3D;

import Evaluation.Virtual.ExtendedShape;

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
		[[nodiscard]]
		auto constexpr inline
		(	GetDepth
		)	()	const
			noexcept
		->	float
			override
		{	return
				1.0f
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetComputeSizeMultiplier
		)	()	const
			noexcept
		->	float
			override
		{	return
				this
				->	Shape2D
				.	GetComputeSizeMultiplier
					()
			;
		}
	};
}
