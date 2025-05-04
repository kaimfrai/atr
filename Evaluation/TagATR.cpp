import Evaluation.Dependency.PseudoRandomSequence;
import Evaluation.Dependency.TransformReduce;
import Evaluation.Dependency.VerifyLoopSum;

import Evaluation.TagATR.Circle;
import Evaluation.TagATR.Ellipse;
import Evaluation.TagATR.Rectangle;
import Evaluation.TagATR.Square;
import Evaluation.TagATR.Triangle;
import Evaluation.TagATR.Cube;
import Evaluation.TagATR.Cuboid;
import Evaluation.TagATR.Pyramid;
import Evaluation.TagATR.Sphere;
import Evaluation.TagATR.Cylinder;
import Evaluation.TagATR.Cone;
import Evaluation.TagATR.Ellipsoid;
import Evaluation.TagATR.Head;

import Evaluation.TagATR.Interface;

import ATR.Literals;
import ATR.Instance;

import Std;

using namespace ::ATR::Literals;

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

	VolumeComputer
		vElements
	{	static_cast<::std::uint32_t>
		(	i_vRandomSequence
			.	size
				()
		)
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
					,	{	vRed
						,	vGreen
						,	vBlue
						,	vAlpha
						,	vLateral
						,	vLongitudinal
						,	vVertical
						,	vHeight
						}
					,	{}
					)
				;
			}
			break;

			case
				1
		:	{	vElements
				.	emplace_back
					(	"Ellipse"_id
					,	{	vRed
						,	vGreen
						,	vBlue
						,	vAlpha
						,	vLateral
						,	vLongitudinal
						,	vVertical
						,	vHeight
						,	vWidth
						}
					,	{}
					)
				;
			}
			break;

			case
				2
		:	{	vElements
				.	emplace_back
					(	"Rectangle"_id
					,	{	vRed
						,	vGreen
						,	vBlue
						,	vAlpha
						,	vLateral
						,	vLongitudinal
						,	vVertical
						,	vHeight
						,	vWidth
						}
					,	{}
					)
				;
			}
			break;

			case
				3
		:	{	vElements
				.	emplace_back
					(	"Square"_id
					,	{	vRed
						,	vGreen
						,	vBlue
						,	vAlpha
						,	vLateral
						,	vLongitudinal
						,	vVertical
						,	vHeight
						}
					,	{}
					)
				;
			}
			break;

			case
				4
		:	{	vElements
				.	emplace_back
					(	"Triangle"_id
					,	{	vRed
						,	vGreen
						,	vBlue
						,	vAlpha
						,	vLateral
						,	vLongitudinal
						,	vVertical
						,	vHeight
						,	vWidth
						}
					,	{}
					)
				;
			}
			break;

			case
				5
		:	{	vElements
				.	emplace_back
					(	"Cube"_id
					,	{	vRed
						,	vGreen
						,	vBlue
						,	vAlpha
						,	vLateral
						,	vLongitudinal
						,	vVertical
						,	vHeight
						}
					,	{}
					)
				;
			}
			break;

			case
				6
		:	{	vElements
				.	emplace_back
					(	"Cuboid"_id
					,	{	vRed
						,	vGreen
						,	vBlue
						,	vAlpha
						,	vLateral
						,	vLongitudinal
						,	vVertical
						,	vHeight
						,	vWidth
						,	vDepth
						}
					,	{}
					)
				;
			}
			break;

			case
				7
		:	{	vElements
				.	emplace_back
					(	"Pyramid"_id
					,	{	vRed
						,	vGreen
						,	vBlue
						,	vAlpha
						,	vLateral
						,	vLongitudinal
						,	vVertical
						,	vHeight
						,	vWidth
						,	vDepth
						}
					,	{}
					)
				;
			}
			break;

			case
				8
		:	{	vElements
				.	emplace_back
					(	"Sphere"_id
					,	{	vRed
						,	vGreen
						,	vBlue
						,	vAlpha
						,	vLateral
						,	vLongitudinal
						,	vVertical
						,	vHeight
						}
					,	{}
					)
				;
			}
			break;

			case
				9
		:	{	vElements
				.	emplace_back
					(	"Cylinder"_id
					,	{	vRed
						,	vGreen
						,	vBlue
						,	vAlpha
						,	vLateral
						,	vLongitudinal
						,	vVertical
						,	vHeight
						,	vDepth
						}
					,	{}
					)
				;
			}
			break;

			case
				10
		:	{	vElements
				.	emplace_back
					(	"Cone"_id
					,	{	vRed
						,	vGreen
						,	vBlue
						,	vAlpha
						,	vLateral
						,	vLongitudinal
						,	vVertical
						,	vHeight
						,	vDepth
						}
					,	{}
					)
				;
			}
			break;

			case
				11
		:	{	vElements
				.	emplace_back
					(	"Ellipsoid"_id
					,	{	vRed
						,	vGreen
						,	vBlue
						,	vAlpha
						,	vLateral
						,	vLongitudinal
						,	vVertical
						,	vHeight
						,	vWidth
						,	vDepth
						}
					,	{}
					)
				;
			}
			break;

			case
				12
		:	{	vElements
				.	emplace_back
					(	"Head"_id
					,	{	nullptr
						,	vRed
						,	vGreen
						,	vBlue
						,	vAlpha
						,	vLateral
						,	vLongitudinal
						,	vVertical
						,	vHeight
						}
					,	{	vEyeRed
						,	vEyeGreen
						,	vEyeBlue
						,	vLeftEyeLateral
						,	vEyeLongitudinal
						,	vEyeVertical
						,	vEyeHeight
						,	vRightEyeLateral
						}
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
		,	[]	(	auto const
						rBody
				)
			{	return
					rBody
					.	ComputeVolume
						()
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
