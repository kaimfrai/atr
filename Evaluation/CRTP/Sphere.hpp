export module Evaluation.CRTP:Sphere;

export import :BasicSphere;

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
