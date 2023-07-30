export module Evaluation.Replication.Head;

import Evaluation.Replication.Sphere;

export namespace
	Bodies3D
{
	struct
		HeadEyes
	{
		float
			ColorRed
		;
		float
			ColorGreen
		;
		float
			ColorBlue
		;
		float
			LeftPointLateral
		;
		float
			PointLongitudinal
		;
		float
			PointVertical
		;
		float
			Height
		;
		float
			RightPointLateral
		;
	};

	struct
		Head
	{
		Sphere
			Sphere
		;

		HeadEyes
			Eyes
		;
	};
}

