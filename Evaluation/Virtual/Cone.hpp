export module Evaluation.Virtual.Cone;

export import Evaluation.Shared;
export import Evaluation.Virtual.Circle;
export import Evaluation.Virtual.ExtendedShape;

export namespace
	Bodies3D
{
	struct
		Cone
	:	ExtendedShape
		<	Shapes2D::Circle
		>
	{
		Float
			Depth
		;

		auto
			GetDepth
			()	const
		noexcept
		->	Float const
			&
		override
		{
			return
				Depth
			;
		}

		auto
			GetComputeVolumeMultiplier
			()	const
		noexcept
		->	Float
		override
		{
			return
				PiFraction
				<	1z
				,	12z
				>{}
			;
		}
	};
}
