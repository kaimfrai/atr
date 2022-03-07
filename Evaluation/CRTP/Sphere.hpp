export module Evaluation.CRTP.Sphere;

export import Evaluation.CRTP.BasicSphere;

export namespace
	Bodies3D
{
	struct
		Sphere
	:	BasicSphere
		<	Sphere
		>
	{};
}
