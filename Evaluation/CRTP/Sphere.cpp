export module Evaluation.CRTP.Sphere;

import Evaluation.CRTP.BasicSphere;

export namespace
	Bodies3D
{
	struct
		Sphere
	:	BasicSphere
	{
		using
			BasicSphere
		::	BasicSphere
		;
	};
}
