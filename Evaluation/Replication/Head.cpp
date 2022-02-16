export module Evaluation.Replication.Head;

export import Evaluation.Shared.DataTypes;

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

