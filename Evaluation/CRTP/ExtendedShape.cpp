export module Evaluation.CRTP.ExtendedShape;

import Evaluation.CRTP.BasicBody;

export namespace
	Bodies3D
{
	template
		<	typename
				t_tBody
		,	typename
				t_tShape
		>
	struct
		ExtendedShape
	:	BasicBody
		<	t_tBody
		>
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
		{	return
			Shapes2D
			.	GetHeight
				()
			;
		}

		[[nodiscard]]
		auto constexpr inline
			GetWidth
			()	const
			noexcept
		->	float const
			&
		{	return
			Shapes2D
			.	GetWidth
				()
			;
		}
	};
}
