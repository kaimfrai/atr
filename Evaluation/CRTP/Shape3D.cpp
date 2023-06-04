export module Evaluation.CRTP.Shape3D;

import Evaluation.CRTP.ExtendedShape;
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
		->	Float const
			&
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
		(	GetComputeVolumeMultiplier
		)	()	const
			noexcept
		->	Float
		{	return
				this
				->	Shapes2D
				.	GetComputeAreaMultiplier
					()
			;
		}
	};
}
