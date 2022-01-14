export module Evaluation.Replication.Head;

export import Evaluation.Shared;
export import Std;

export namespace
	Bodies3D
{
	struct
		Head
	{
		Float
			Width
		;
		Float
			WidthLeftEye
		;
		Float
			WidthRightEye
		;
		RGBAColor
			Color
		;
		RGBAColor
			ColorLeftEye
		;
		RGBAColor
			ColorRightEye
		;
	};
}

static_assert(SizeMinimal<Bodies3D::Head, 3, 3>);
