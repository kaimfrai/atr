export module Evaluation.CRTP.Ellipsoid;

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
