export module Evaluation.TagReplication.Head;

import Evaluation.TagReplication.Tag;
import Evaluation.TagReplication.Sphere;

import Std;

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
		{	.	Tag
			=	ETag::Head
		};

		HeadEyes
		*	Eyes
		=	new	(	::std::nothrow
				)
			HeadEyes
			{}
		;

		constexpr inline
		(	compl
			Head
		)	()
			noexcept
		{	delete
				Eyes
			;
		}
	};
}

