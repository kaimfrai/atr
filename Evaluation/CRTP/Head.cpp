export module Evaluation.CRTP:Head;

export import :BasicSphere;
export import :Sphere;

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
