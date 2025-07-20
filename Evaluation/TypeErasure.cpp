import Evaluation.Dependency.CommonData;
import Evaluation.Dependency.DynamicArray;
import Evaluation.Dependency.PseudoRandomSequence;
import Evaluation.Dependency.TransformReduce;
import Evaluation.Dependency.TypeErasure;
import Evaluation.Dependency.VerifyLoopSum;

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

namespace
	Bodies3D
{
	template
		<	typename
				Sig
		,	typename
				T
			=	::boost::type_erasure::_self
		>
	struct
		has_ComputeVolume
	;

	namespace
		boost_type_erasure_impl
	{
		template
			<	typename
					Sig
			,	typename
					T
			>
		using
			has_ComputeVolumeself
		=	has_ComputeVolume
			<	Sig
			,	T
			>
		;

		template
			<	typename
					Sig
			,	typename
					Concept
			,	typename
					Base
			,	typename
					ID
			,	typename
					Enable
				=	void
			>
		struct
			has_ComputeVolume_member_interface
		;

		template
			<	class
					Concept
			,	class
					Base
			,	class
					ID
			,	class
					V
			>
		struct
			has_ComputeVolume_member_interface
			<	auto
					()
				->	float
			,	Concept
			,	Base
			,	ID const
			,	V
			>
		:	Base
		{
			using
				_boost_type_erasure_has_memberComputeVolume
			=	void
			;

			auto
			(	ComputeVolume
			)	()	const
			->	float
			{	return
				::boost::type_erasure::call
				(	Concept
					()
				,	*	this
				);
			}
		};

		template
			<	typename
					Sig
			>
		struct
			has_ComputeVolumemember
		;

		template
			<	typename
					T0
			>
		struct
			has_ComputeVolumemember
			<	auto(	T0
					)
				->	float
			>
		{
			auto static
			(	apply
			)	(	T0
						t0
				)
			->	float
			{	return
				t0
				.	ComputeVolume
					()
				;
			}
		};
	}

	template
		<	typename
				Sig
		,	typename
				T
		>
	struct
		has_ComputeVolume
	:	::boost::type_erasure::detail::choose_member_impl_t
		<	Sig
		,	T
		,	boost_type_erasure_impl
			::	has_ComputeVolumemember
		,	boost_type_erasure_impl
			::	has_ComputeVolumeself
		>
	{};

	template
		<	typename
				Sig
		,	typename
				T
		>
	auto
	(	boost_type_erasure_find_interface
	)	(	has_ComputeVolume
			<	Sig
			,	T
			>
		)
	->	::boost::type_erasure::detail::member_choose_interface
		<	Sig
		,	T
		,	has_ComputeVolume
		,	boost_type_erasure_impl
			::	has_ComputeVolume_member_interface
		>
	;

	using
		Body3D
	=	::boost::type_erasure::any
		<	::boost::mpl::vector
			<	has_ComputeVolume
				<	auto
						()	const
					->	float
				>
			,	::boost::type_erasure::destructible
				<>
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
					(	Circle
						{	vColor
						,	vCoordinates
						,	vHeight
						}
					)
				;
			}
			break;

			case
				1
		:	{	vElements
				.	emplace_back
					(	Ellipse
						{	vColor
						,	vCoordinates
						,	vHeight
						,	vWidth
						}
					)
				;
			}
			break;

			case
				2
		:	{	vElements
				.	emplace_back
					(	Rectangle
						{	vColor
						,	vCoordinates
						,	vHeight
						,	vWidth
						}
					)
				;
			}
			break;

			case
				3
		:	{	vElements
				.	emplace_back
					(	Square
						{	vColor
						,	vCoordinates
						,	vHeight
						}
					)
				;
			}
			break;

			case
				4
		:	{	vElements
				.	emplace_back
					(	Triangle
						{	vColor
						,	vCoordinates
						,	vHeight
						,	vWidth
						}
					)
				;
			}
			break;

			case
				5
		:	{	vElements
				.	emplace_back
					(	Cube
						{	vColor
						,	vCoordinates
						,	vHeight
						}
					)
				;
			}
			break;

			case
				6
		:	{	vElements
				.	emplace_back
					(	Cuboid
						{	vColor
						,	vCoordinates
						,	vHeight
						,	vWidth
						,	vDepth
						}
					)
				;
			}
			break;

			case
				7
		:	{	vElements
				.	emplace_back
					(	Pyramid
						{	vColor
						,	vCoordinates
						,	vHeight
						,	vWidth
						,	vDepth
						}
					)
				;
			}
			break;

			case
				8
		:	{	vElements
				.	emplace_back
					(	Sphere
						{	vColor
						,	vCoordinates
						,	vHeight
						}
					)
				;
			}
			break;

			case
				9
		:	{	vElements
				.	emplace_back
					(	Cylinder
						{	vColor
						,	vCoordinates
						,	vHeight
						,	vDepth
						}
					)
				;
			}
			break;

			case
				10
		:	{	vElements
				.	emplace_back
					(	Cone
						{	vColor
						,	vCoordinates
						,	vHeight
						,	vDepth
						}
					)
				;
			}
			break;

			case
				11
		:	{	vElements
				.	emplace_back
					(	Ellipsoid
						{	vColor
						,	vCoordinates
						,	vHeight
						,	vWidth
						,	vDepth
						}
					)
				;
			}
			break;

			case
				12
		:	{	vElements
				.	emplace_back
					(	Head
						{	vColor
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
		,	[]	(	Body3D const
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
