export module Evaluation.CRTP.BasicSphere;

export import Evaluation.CRTP.Circle;
export import Evaluation.CRTP.SphericBody;
export import Evaluation.CRTP.DepthIsWidth;

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
