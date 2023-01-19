export module Evaluation.CRTP.BasicSphere;

import Evaluation.CRTP.Circle;
import Evaluation.CRTP.SphericBody;
import Evaluation.CRTP.DepthIsWidth;

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
