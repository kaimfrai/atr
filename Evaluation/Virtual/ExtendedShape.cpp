export module Evaluation.Virtual.ExtendedShape;

export import Evaluation.Virtual.BasicBody;

import Evaluation.Shared.DataTypes;

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

		auto
			GetHeight
			()	const
		noexcept
		->	Float const
			&
		override
		{
			return
				Shapes2D
				.	GetHeight
					()
			;
		}

		auto
			GetWidth
			()	const
		noexcept
		->	Float const
			&
		override
		{
			return
				Shapes2D
				.	GetWidth
					()
			;
		}
	};
}
