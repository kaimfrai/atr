export module Evaluation.Virtual.Head;

export import Evaluation.Virtual.Sphere;

export namespace
	Bodies3D
{
	struct
		Head
	:	Sphere
	{
		Sphere
			LeftEye
		;
		Sphere
			RightEye
		;
	};
}
