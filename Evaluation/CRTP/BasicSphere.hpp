export module Evaluation.CRTP:BasicSphere;

export import :Circle;
export import :SphericBody;
export import :DepthIsWidth;

export namespace
	Bodies3D
{
	template
		<	typename
				t_tSphere
		>
	struct
		BasicSphere
	:	SphericBody
		<	t_tSphere
		,	Shapes2D::Circle
		>
	,	DepthIsWidth
		<	t_tSphere
		>
	{};
}
