export module Evaluation.CRTP.Head;

export import Evaluation.CRTP.BasicSphere;
export import Evaluation.CRTP.Sphere;

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
