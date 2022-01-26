export module Evaluation.CRTP.Ellipsoid;

export import Evaluation.Shared.SizeCheck;
export import Evaluation.CRTP.Ellipse;
export import Evaluation.CRTP.SphericBody;
export import Evaluation.CRTP.SeparateDepth;

export namespace
	Bodies3D
{
	struct
		Ellipsoid
	:	SphericBody
		<	Ellipsoid
		,	Shapes2D::Ellipse
		>
	,	SeparateDepth
	{};
}

static_assert(AdditionalSize<Bodies3D::Ellipsoid, 3, 1> == 4);
static_assert(SizeMinimal<Bodies3D::Ellipsoid, 3, 1>);
