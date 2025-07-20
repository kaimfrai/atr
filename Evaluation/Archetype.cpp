import Evaluation.Dependency.DynamicArray;
import Evaluation.Dependency.PseudoRandomSequence;
import Evaluation.Dependency.TransformReduce;
import Evaluation.Dependency.VerifyLoopSum;

import Evaluation.Archetype.ComputeVolume;
import Evaluation.Archetype.Circle;
import Evaluation.Archetype.Ellipse;
import Evaluation.Archetype.Rectangle;
import Evaluation.Archetype.Square;
import Evaluation.Archetype.Triangle;
import Evaluation.Archetype.Cube;
import Evaluation.Archetype.Cuboid;
import Evaluation.Archetype.Pyramid;
import Evaluation.Archetype.Sphere;
import Evaluation.Archetype.Cylinder;
import Evaluation.Archetype.Cone;
import Evaluation.Archetype.Ellipsoid;
import Evaluation.Archetype.Head;

import ATR.Literals;
import ATR.Erase;
import ATR.Virtual.Element;
import ATR.Virtual.Entry;

import Meta.ID;

import std;

using ::ATR::Virtual::Element;
using ::ATR::Virtual::Entry;
using ::Meta::ID;

using namespace ATR::Literals;

namespace
	Bodies3D
{
	using
		Body3D
	=	Element
		<	16uz * sizeof(float)
		,	alignof(float)
		,	Entry
			<	ID<"ComputeVolume">
			,	auto
					(	::ATR::CErasure
					)
					noexcept
				->	float
			>
		>
	;
}

[[nodiscard]]
auto inline
(	ComputeVolumeSum
)	(	PseudoRandomSequence
			i_vRandomSequence
	)
	noexcept
->	float
{
	using namespace Bodies3D;

	DynamicArray<Body3D>
		vElements
	{	i_vRandomSequence
		.	size
			()
	};

	for	(	auto const
			[	vType
			,	vRed
			,	vGreen
			,	vBlue
			,	vAlpha
			,	vLateral
			,	vLongitudinal
			,	vVertical
			,	vHeight
			,	vWidth
			,	vDepth
			,	vEyeRed
			,	vEyeGreen
			,	vEyeBlue
			,	vLeftEyeLateral
			,	vEyeLongitudinal
			,	vEyeVertical
			,	vEyeHeight
			,	vRightEyeLateral
			,	_
			]
		:	i_vRandomSequence
		)
	{
		switch
			(	vType
			%	13
			)
		{	case
				0
		:	{	vElements
				.	emplace_back
					(	"Circle"_id
					,	vRed
					,	vGreen
					,	vBlue
					,	vAlpha
					,	vLateral
					,	vLongitudinal
					,	vVertical
					,	vHeight
					)
				;
			}
			break;

			case
				1
		:	{	vElements
				.	emplace_back
					(	"Ellipse"_id
					,	vRed
					,	vGreen
					,	vBlue
					,	vAlpha
					,	vLateral
					,	vLongitudinal
					,	vVertical
					,	vHeight
					,	vWidth
					)
				;
			}
			break;

			case
				2
		:	{	vElements
				.	emplace_back
					(	"Rectangle"_id
					,	vRed
					,	vGreen
					,	vBlue
					,	vAlpha
					,	vLateral
					,	vLongitudinal
					,	vVertical
					,	vHeight
					,	vWidth
					)
				;
			}
			break;

			case
				3
		:	{	vElements
				.	emplace_back
					(	"Square"_id
					,	vRed
					,	vGreen
					,	vBlue
					,	vAlpha
					,	vLateral
					,	vLongitudinal
					,	vVertical
					,	vHeight
					)
				;
			}
			break;

			case
				4
		:	{	vElements
				.	emplace_back
					(	"Triangle"_id
					,	vRed
					,	vGreen
					,	vBlue
					,	vAlpha
					,	vLateral
					,	vLongitudinal
					,	vVertical
					,	vHeight
					,	vWidth
					)
				;
			}
			break;

			case
				5
		:	{	vElements
				.	emplace_back
					(	"Cube"_id
					,	vRed
					,	vGreen
					,	vBlue
					,	vAlpha
					,	vLateral
					,	vLongitudinal
					,	vVertical
					,	vHeight
					)
				;
			}
			break;

			case
				6
		:	{	vElements
				.	emplace_back
					(	"Cuboid"_id
					,	vRed
					,	vGreen
					,	vBlue
					,	vAlpha
					,	vLateral
					,	vLongitudinal
					,	vVertical
					,	vHeight
					,	vWidth
					,	vDepth
					)
				;
			}
			break;

			case
				7
		:	{	vElements
				.	emplace_back
					(	"Pyramid"_id
					,	vRed
					,	vGreen
					,	vBlue
					,	vAlpha
					,	vLateral
					,	vLongitudinal
					,	vVertical
					,	vHeight
					,	vWidth
					,	vDepth
					)
				;
			}
			break;

			case
				8
		:	{	vElements
				.	emplace_back
					(	"Sphere"_id
					,	vRed
					,	vGreen
					,	vBlue
					,	vAlpha
					,	vLateral
					,	vLongitudinal
					,	vVertical
					,	vHeight
					)
				;
			}
			break;

			case
				9
		:	{	vElements
				.	emplace_back
					(	"Cylinder"_id
					,	vRed
					,	vGreen
					,	vBlue
					,	vAlpha
					,	vLateral
					,	vLongitudinal
					,	vVertical
					,	vHeight
					,	vDepth
					)
				;
			}
			break;

			case
				10
		:	{	vElements
				.	emplace_back
					(	"Cone"_id
					,	vRed
					,	vGreen
					,	vBlue
					,	vAlpha
					,	vLateral
					,	vLongitudinal
					,	vVertical
					,	vHeight
					,	vDepth
					)
				;
			}
			break;

			case
				11
		:	{	vElements
				.	emplace_back
					(	"Ellipsoid"_id
					,	vRed
					,	vGreen
					,	vBlue
					,	vAlpha
					,	vLateral
					,	vLongitudinal
					,	vVertical
					,	vHeight
					,	vWidth
					,	vDepth
					)
				;
			}
			break;

			case
				12
		:	{	vElements
				.	emplace_back
					(	"Head"_id
					,	vRed
					,	vGreen
					,	vBlue
					,	vAlpha
					,	vLateral
					,	vLongitudinal
					,	vVertical
					,	vHeight
					,	vEyeRed
					,	vEyeGreen
					,	vEyeBlue
					,	vLeftEyeLateral
					,	vEyeLongitudinal
					,	vEyeVertical
					,	vEyeHeight
					,	vRightEyeLateral
					)
				;
			}
			break;

			default
		:	::std::unreachable
			();
		}
	}

	return
		TransformReduce
		(	vElements
			.	begin
				()
		,	vElements
			.	end
				()
		,	[]	(	Body3D const
					&	i_rBody3D
				)
			->	float
			{	return
					i_rBody3D
					(	"ComputeVolume"_id
					)
				;
			}
		)
	;
}

auto
(	main
)	(	int
	,	char const
		*	i_aArgValue
			[]
	)
->	int
{
	PseudoRandomSequence const
		vRandomSequence
	{	i_aArgValue
		[	1z
		]
	,	i_aArgValue
		[	2z
		]
	};

	float const
		vLoopSum
	=	::ComputeVolumeSum
		(	vRandomSequence
		)
	;

	return
		::VerifyLoopSum
		(	vLoopSum
		,	vRandomSequence
		)
	;
}
