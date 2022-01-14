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

static_assert(AdditionalSize<Bodies3D::Head, 3, 3> == 60);
static_assert(not SizeMinimal<Bodies3D::Head, 3, 3>);
