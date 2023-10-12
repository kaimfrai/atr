export module Evaluation.CRTP.BasicSphere;

import Evaluation.CRTP.Circle;
import Evaluation.CRTP.SphericBody;
import Evaluation.CRTP.DepthIsWidth;

export namespace
	Bodies3D
{
	struct
		BasicSphere
	:	SphericBody
		<	Shapes2D::Circle
		>
	,	DepthIsWidth
	{};
}
