export module Evaluation.CRTP.ExtendedShape;

import Evaluation.CRTP.BasicBody;

import Evaluation.Dependency.DataTypes;

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

		auto constexpr
		(	GetHeight
		)	()	const
			noexcept
		->	Float const
			&
		{	return
			Shapes2D
			.	GetHeight
				()
			;
		}

		auto constexpr
			GetWidth
			()	const
			noexcept
		->	Float const
			&
		{	return
			Shapes2D
			.	GetWidth
				()
			;
		}
	};
}
