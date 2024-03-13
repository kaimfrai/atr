export module Evaluation.CRTP.BasicSphere;

import Evaluation.CRTP.Circle;
import Evaluation.CRTP.SphericBody;
import Evaluation.CRTP.DepthIsHeight;

export namespace
	Bodies3D
{
	struct
		BasicSphere
	:	SphericBody
		<	Shapes2D::Circle
		>
	,	DepthIsHeight
	{
		using
			SphericBody
		::	SphericBody
		;
	};
}
