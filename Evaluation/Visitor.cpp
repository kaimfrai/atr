import Evaluation.Dependency.CommonData;
import Evaluation.Dependency.DynamicArray;
import Evaluation.Dependency.PseudoRandomSequence;
import Evaluation.Dependency.TransformReduce;
import Evaluation.Dependency.VerifyLoopSum;
import Evaluation.Dependency.Visitor.ObjectReference;
import Evaluation.Dependency.Visitor.ObjectValue;

import Evaluation.CRTP.Circle;
import Evaluation.CRTP.Ellipse;
import Evaluation.CRTP.Rectangle;
import Evaluation.CRTP.Square;
import Evaluation.CRTP.Triangle;
import Evaluation.CRTP.Shape3D;
import Evaluation.CRTP.Cube;
import Evaluation.CRTP.Cuboid;
import Evaluation.CRTP.Pyramid;
import Evaluation.CRTP.Sphere;
import Evaluation.CRTP.Cylinder;
import Evaluation.CRTP.Cone;
import Evaluation.CRTP.Ellipsoid;
import Evaluation.CRTP.Head;

import std;

using ::Visitor::ObjectReference;
using ::Visitor::ObjectValue;

namespace
	Bodies3D
{
	using
		Body3D
	=	ObjectValue
		<	sizeof(Cuboid)
		,	::std::align_val_t
			{	alignof(void*)
			}
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
		RGBAColor const
			vColor
		{	vRed
		,	vGreen
		,	vBlue
		,	vAlpha
		};
		Point const
			vCoordinates
		{	vLateral
		,	vLongitudinal
		,	vVertical
		};

		switch
			(	vType
			%	13
			)
		{	case
				0
		:	{	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Circle
						>
					,	vColor
					,	vCoordinates
					,	vHeight
					)
				;
			}
			break;

			case
				1
		:	{	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Ellipse
						>
					,	vColor
					,	vCoordinates
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
					(	::std::in_place_type
						<	Rectangle
						>
					,	vColor
					,	vCoordinates
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
					(	::std::in_place_type
						<	Square
						>
					,	vColor
					,	vCoordinates
					,	vHeight
					)
				;
			}
			break;

			case
				4
		:	{	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Triangle
						>
					,	vColor
					,	vCoordinates
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
					(	::std::in_place_type
						<	Cube
						>
					,	vColor
					,	vCoordinates
					,	vHeight
					)
				;
			}
			break;

			case
				6
		:	{	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Cuboid
						>
					,	vColor
					,	vCoordinates
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
					(	::std::in_place_type
						<	Pyramid
						>
					,	vColor
					,	vCoordinates
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
					(	::std::in_place_type
						<	Sphere
						>
					,	vColor
					,	vCoordinates
					,	vHeight
					)
				;
			}
			break;

			case
				9
		:	{	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Cylinder
						>
					,	vColor
					,	vCoordinates
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
					(	::std::in_place_type
						<	Cone
						>
					,	vColor
					,	vCoordinates
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
					(	::std::in_place_type
						<	Ellipsoid
						>
					,	vColor
					,	vCoordinates
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
					(	::std::in_place_type
						<	Head
						>
					,	vColor
					,	vCoordinates
					,	vHeight
					,	Sphere
						{	RGBAColor
							{	vEyeRed
							,	vEyeGreen
							,	vEyeBlue
							,	vAlpha
							}
						,	Point
							{	vLeftEyeLateral
							,	vEyeLongitudinal
							,	vEyeVertical
							}
						,	vEyeHeight
						}
					,	Sphere
						{	RGBAColor
							{	vEyeRed
							,	vEyeGreen
							,	vEyeBlue
							,	vAlpha
							}
						,	Point
							{	vRightEyeLateral
							,	vEyeLongitudinal
							,	vEyeVertical
							}
						,	vEyeHeight
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
		,	[]	(	ObjectReference
							i_rObject
				)
			{	return
					Body3D::Visit
					<	[]	(	auto const
								&	i_rBody
							)
						{	return
								i_rBody
								.	ComputeVolume
									()
							;
						}
					,	Circle const&
					,	Ellipse const&
					,	Rectangle const&
					,	Square const&
					,	Triangle const&
					,	Cube const&
					,	Cuboid const&
					,	Pyramid const&
					,	Sphere const&
					,	Cylinder const&
					,	Cone const&
					,	Ellipsoid const&
					,	Head const&
					>(	i_rObject
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

