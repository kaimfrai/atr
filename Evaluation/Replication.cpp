import Evaluation.Dependency.CommonData;
import Evaluation.Dependency.DynamicArray;
import Evaluation.Dependency.PseudoRandomSequence;
import Evaluation.Dependency.TransformReduce;
import Evaluation.Dependency.VerifyLoopSum;

import Evaluation.Replication.Circle;
import Evaluation.Replication.Ellipse;
import Evaluation.Replication.Rectangle;
import Evaluation.Replication.Square;
import Evaluation.Replication.Triangle;
import Evaluation.Replication.Cube;
import Evaluation.Replication.Cuboid;
import Evaluation.Replication.Pyramid;
import Evaluation.Replication.Sphere;
import Evaluation.Replication.Cylinder;
import Evaluation.Replication.Cone;
import Evaluation.Replication.Ellipsoid;
import Evaluation.Replication.Head;

import std;

namespace
	Bodies3D
{
	struct
		VolumeComputer
	{
		auto
		(*	m_fComputeVolume
		)	(	void const
				*
			)
			noexcept
		->	float
		;

		union
		{	std::byte
				m_vAny
			;
			Circle
				m_vCircle
			;
			Ellipse
				m_vEllipse
			;
			Rectangle
				m_vRectangle
			;
			Square
				m_vSquare
			;
			Triangle
				m_vTriangle
			;
			Cube
				m_vCube
			;
			Cuboid
				m_vCuboid
			;
			Pyramid
				m_vPyramid
			;
			Sphere
				m_vSphere
			;
			Cylinder
				m_vCylinder
			;
			Cone
				m_vCone
			;
			Ellipsoid
				m_vEllipsoid
			;
			Head
				m_vHead
			;
		};

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Circle
				>
			,	auto
				&&
				...	i_rpArgument
			)
		:	m_fComputeVolume
			{	&ComputeVolumeCircle
			}
		,	m_vCircle
			{	::std::forward<decltype(i_rpArgument)>
				(	i_rpArgument
				)
				...
			}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Ellipse
				>
			,	auto
				&&
				...	i_rpArgument
			)
		:	m_fComputeVolume
			{	&ComputeVolumeEllipse
			}
		,	m_vEllipse
			{	::std::forward<decltype(i_rpArgument)>
				(	i_rpArgument
				)
				...
			}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Rectangle
				>
			,	auto
				&&
				...	i_rpArgument
			)
		:	m_fComputeVolume
			{	&ComputeVolumeRectangle
			}
		,	m_vRectangle
			{	::std::forward<decltype(i_rpArgument)>
				(	i_rpArgument
				)
				...
			}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Square
				>
			,	auto
				&&
				...	i_rpArgument
			)
		:	m_fComputeVolume
			{	&ComputeVolumeSquare
			}
		,	m_vSquare
			{	::std::forward<decltype(i_rpArgument)>
				(	i_rpArgument
				)
				...
			}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Triangle
				>
			,	auto
				&&
				...	i_rpArgument
			)
		:	m_fComputeVolume
			{	&ComputeVolumeTriangle
			}
		,	m_vTriangle
			{	::std::forward<decltype(i_rpArgument)>
				(	i_rpArgument
				)
				...
			}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Cube
				>
			,	auto
				&&
				...	i_rpArgument
			)
		:	m_fComputeVolume
			{	&ComputeVolumeCube
			}
		,	m_vCube
			{	::std::forward<decltype(i_rpArgument)>
				(	i_rpArgument
				)
				...
			}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Cuboid
				>
			,	auto
				&&
				...	i_rpArgument
			)
		:	m_fComputeVolume
			{	&ComputeVolumeCuboid
			}
		,	m_vCuboid
			{	::std::forward<decltype(i_rpArgument)>
				(	i_rpArgument
				)
				...
			}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Pyramid
				>
			,	auto
				&&
				...	i_rpArgument
			)
		:	m_fComputeVolume
			{	&ComputeVolumePyramid
			}
		,	m_vPyramid
			{	::std::forward<decltype(i_rpArgument)>
				(	i_rpArgument
				)
				...
			}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Sphere
				>
			,	auto
				&&
				...	i_rpArgument
			)
		:	m_fComputeVolume
			{	&ComputeVolumeSphere
			}
		,	m_vSphere
			{	::std::forward<decltype(i_rpArgument)>
				(	i_rpArgument
				)
				...
			}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Cylinder
				>
			,	auto
				&&
				...	i_rpArgument
			)
		:	m_fComputeVolume
			{	&ComputeVolumeCylinder
			}
		,	m_vCylinder
			{	::std::forward<decltype(i_rpArgument)>
				(	i_rpArgument
				)
				...
			}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Cone
				>
			,	auto
				&&
				...	i_rpArgument
			)
		:	m_fComputeVolume
			{	&ComputeVolumeCone
			}
		,	m_vCone
			{	::std::forward<decltype(i_rpArgument)>
				(	i_rpArgument
				)
				...
			}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Ellipsoid
				>
			,	auto
				&&
				...	i_rpArgument
			)
		:	m_fComputeVolume
			{	&ComputeVolumeEllipsoid
			}
		,	m_vEllipsoid
			{	::std::forward<decltype(i_rpArgument)>
				(	i_rpArgument
				)
				...
			}
		{}

		explicit(false) constexpr inline
		(	VolumeComputer
		)	(	::std::in_place_type_t
				<	Head
				>
			,	auto
				&&
				...	i_rpArgument
			)
		:	m_fComputeVolume
			{	&ComputeVolumeSphere
			}
		,	m_vHead
			{	::std::forward<decltype(i_rpArgument)>
				(	i_rpArgument
				)
				...
			}
		{}

		[[nodiscard]]
		auto constexpr inline
		(	ComputeVolume
		)	()	const
			noexcept
		->	float
		{	return
			m_fComputeVolume
			(	&m_vAny
			);
		}
	};
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

	DynamicArray<VolumeComputer>
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
					(	::std::in_place_type
						<	Circle
						>
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
					(	::std::in_place_type
						<	Ellipse
						>
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
					(	::std::in_place_type
						<	Rectangle
						>
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
					(	::std::in_place_type
						<	Square
						>
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
					(	::std::in_place_type
						<	Triangle
						>
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
					(	::std::in_place_type
						<	Cube
						>
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
					(	::std::in_place_type
						<	Cuboid
						>
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
					(	::std::in_place_type
						<	Pyramid
						>
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
					(	::std::in_place_type
						<	Sphere
						>
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
					(	::std::in_place_type
						<	Cylinder
						>
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
					(	::std::in_place_type
						<	Cone
						>
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
					(	::std::in_place_type
						<	Ellipsoid
						>
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
					(	::std::in_place_type
						<	Head
						>
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
		,	[]	(	VolumeComputer const
					&	i_rBody3D
				)
			->	float
			{	return
					i_rBody3D
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
