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

static_assert(AdditionalSize<Bodies3D::Sphere, 1, 1> == 4);
static_assert(SizeMinimal<Bodies3D::Sphere, 1, 1>);
