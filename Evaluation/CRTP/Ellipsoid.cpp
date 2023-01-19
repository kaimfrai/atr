export module Evaluation.CRTP.Ellipsoid;

import Evaluation.CRTP.Ellipse;
import Evaluation.CRTP.SphericBody;
import Evaluation.CRTP.SeparateDepth;

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
