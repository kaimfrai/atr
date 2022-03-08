export module Evaluation.CRTP:Ellipsoid;

export import :Ellipse;
export import :SphericBody;
export import :SeparateDepth;

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
