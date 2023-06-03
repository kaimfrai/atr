export module Evaluation.Virtual.ExtendedShape;

import Evaluation.Virtual.BasicBody;

import Evaluation.Dependency.DataTypes;

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
		->	Float const
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
		->	Float const
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
