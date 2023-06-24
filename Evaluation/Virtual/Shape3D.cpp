export module Evaluation.Virtual.Shape3D;

import Evaluation.Virtual.ExtendedShape;
import Evaluation.Dependency.DataTypes;

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
		->	Float const
			&
			override
		{
			Float const static constexpr
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
		->	Float
			override
		{	return
				this
				->	Shapes2D
				.	GetComputeSizeMultiplier
					()
			;
		}
	};
}
