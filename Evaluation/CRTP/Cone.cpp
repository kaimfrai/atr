export module Evaluation.CRTP.Cone;

export import Evaluation.Shared.SizeCheck;
export import Evaluation.Shared.PiFraction;
export import Evaluation.CRTP.Circle;
export import Evaluation.CRTP.ExtendedShape;
export import Evaluation.CRTP.SeparateDepth;

export namespace
	Bodies3D
{
	struct
		Cone
	:	ExtendedShape
		<	Cone
		,	Shapes2D::Circle
		>
	,	SeparateDepth
	{
		auto
			GetComputeVolumeMultiplier
			()	const
		noexcept
		->	Float
		{
			return
				πFraction
				<	1z
				,	12z
				>{}
			;
		}
	};
}

static_assert(AdditionalSize<Bodies3D::Cone, 2, 1> == 4);
static_assert(SizeMinimal<Bodies3D::Cone, 2, 1>);
