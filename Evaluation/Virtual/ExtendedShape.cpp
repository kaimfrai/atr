export module Evaluation.Virtual.ExtendedShape;

import Evaluation.Virtual.BasicBody;

export namespace
	Bodies3D
{
	template
		<	typename
				t_tShape
		>
	struct
		ExtendedShape
	:	BasicBody
	{
		t_tShape
			Shapes2D
		;

		[[nodiscard]]
		auto constexpr inline
		(	GetHeight
		)	()	const
			noexcept
		->	float const
			&
			override
		{	return
			Shapes2D
			.	GetHeight
				()
			;
		}

		[[nodiscard]]
		auto constexpr inline
		(	GetWidth
		)	()	const
			noexcept
		->	float const
			&
			override
		{	return
			Shapes2D
			.	GetWidth
				()
			;
		}
	};
}
