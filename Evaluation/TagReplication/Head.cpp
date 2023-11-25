export module Evaluation.TagReplication.Head;

import Evaluation.TagReplication.Tag;
import Evaluation.TagReplication.Sphere;
import Evaluation.Dependency.PiFraction;

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
		ETag static constexpr inline
			Tag
		=	ETag::Head
		;

		float
		*	Eyes
		=	new	(	::std::nothrow
				)
			float
				[	8
				]
		;

		Sphere
			Sphere
		;

		constexpr inline
		(	compl
			Head
		)	()
			noexcept
		{	delete
				[]
				Eyes
			;
		}
	};

	[[nodiscard]]
	auto constexpr inline
	(	ComputeVolumeHead
	)	(	void const
			*	i_aObject
		)
		noexcept
	->	float
	{
		Head const
		*	aHead
		=	static_cast
			<	Head const
				*
			>(	i_aObject
			)
		;

		return
			PiFraction
			<	1z
			,	6z
			>{}
		*	aHead
			->	Sphere
			.	Height
		*	aHead
			->	Sphere
			.	Height
		*	aHead
			->	Sphere
			.	Height
		;
	}
}

