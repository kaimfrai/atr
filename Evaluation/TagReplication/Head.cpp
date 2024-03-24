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
				[	8uz
				]
			{}
		;

		Sphere
			Sphere
		{};

		explicit(false) constexpr inline
		(	Head
		)	()
			noexcept
		=	default;

		explicit(true) constexpr inline
		(	Head
		)	(	float
					i_vRed
			,	float
					i_vGreen
			,	float
					i_vBlue
			,	float
					i_vAlpha
			,	float
					i_vLateral
			,	float
					i_vLongitudinal
			,	float
					i_vVertical
			,	float
					i_vHeight
			,	float
					i_vEyeColorRed
			,	float
					i_vEyeColorGreen
			,	float
					i_vEyeColorBlue
			,	float
					i_vLeftEyePointLateral
			,	float
					i_vEyePointLongitudinal
			,	float
					i_vEyePointVertical
			,	float
					i_vEyeHeight
			,	float
					i_vRightEyePointLateral
			)
			noexcept
		:	Eyes
			{	new	(	::std::nothrow
					)
				float
					[	8uz
					]
				{	i_vEyeColorRed
				,	i_vEyeColorGreen
				,	i_vEyeColorBlue
				,	i_vLeftEyePointLateral
				,	i_vEyePointLongitudinal
				,	i_vEyePointVertical
				,	i_vEyeHeight
				,	i_vRightEyePointLateral
				}
			}
		,	Sphere
			{	i_vRed
			,	i_vGreen
			,	i_vBlue
			,	i_vAlpha
			,	i_vLateral
			,	i_vLongitudinal
			,	i_vVertical
			,	i_vHeight
			}
		{}

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
			>
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

