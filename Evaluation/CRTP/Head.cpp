export module Evaluation.CRTP.Head;

import Evaluation.CRTP.BasicSphere;
import Evaluation.CRTP.Sphere;

export namespace
	Bodies3D
{
	struct
		Head
	:	BasicSphere
		<	Head
		>
	{
		Sphere
			LeftEye
		;
		Sphere
			RightEye
		;
	};
}
