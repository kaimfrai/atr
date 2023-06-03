export module Evaluation.CRTP.HeightIsWidth;

import Evaluation.Dependency.DataTypes;

export namespace
	Shapes2D
{
	template
		<	typename
				t_tShape
		>
	struct
		HeightIsWidth
	{
		auto constexpr
		(	GetHeight
		)	()	const
			noexcept
		->	Float const
			&
		{	return
				static_cast
				<	t_tShape const
					*
				>(	this
				)
			->	Width
			;
		}
	};
}
