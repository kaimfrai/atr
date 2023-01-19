export module Evaluation.CRTP:Cylinder;

export import Evaluation.Shared;
export import :Circle;
export import :ExtendedShape;
export import :SeparateDepth;

export namespace
	Bodies3D
{
	struct
		Cylinder
	:	ExtendedShape
		<	Cylinder
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
				PiFraction
				<	1z
				,	4z
				>{}
			;
		}
	};
}
