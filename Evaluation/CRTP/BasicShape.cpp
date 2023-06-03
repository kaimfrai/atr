export module Evaluation.CRTP.BasicShape;

import Evaluation.Dependency.DataTypes;

export namespace
	Shapes2D
{
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

		auto constexpr
		(	ComputeArea
		)	()	const
			noexcept
		->	Float
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
				.	GetComputeAreaMultiplier
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
