export module Evaluation.CRTP.Head;

export import Evaluation.Shared.SizeCheck;
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

static_assert(AdditionalSize<Bodies3D::Head, 3, 3> == 12);
static_assert(not SizeMinimal<Bodies3D::Head, 3, 3>);
