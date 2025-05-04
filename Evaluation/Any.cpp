import Evaluation.Dependency.CommonData;
import Evaluation.Dependency.DynamicArray;
import Evaluation.Dependency.PseudoRandomSequence;
import Evaluation.Dependency.TransformReduce;
import Evaluation.Dependency.VerifyLoopSum;

import Evaluation.CRTP.Circle;
import Evaluation.CRTP.Ellipse;
import Evaluation.CRTP.Rectangle;
import Evaluation.CRTP.Square;
import Evaluation.CRTP.Triangle;
import Evaluation.CRTP.Cube;
import Evaluation.CRTP.Cuboid;
import Evaluation.CRTP.Pyramid;
import Evaluation.CRTP.Sphere;
import Evaluation.CRTP.Cylinder;
import Evaluation.CRTP.Cone;
import Evaluation.CRTP.Ellipsoid;
import Evaluation.CRTP.Head;

import Std;

namespace
	Bodies3D
{
	struct
		IBody
	{
		[[nodiscard]]
		auto virtual constexpr
		(	ComputeVolume
		)	()	const
			noexcept
		->	float
		=	0;

		explicit(false) constexpr
		(	IBody
		)	()
			noexcept
		=	default;

		explicit(false) constexpr inline
		(	IBody
		)	(	IBody const
				&
			)
			noexcept
		=	default;

		explicit(false) constexpr inline
		(	IBody
		)	(	IBody
				&&
			)
			noexcept
		=	default;

		virtual constexpr inline
		(	compl
			IBody
		)	()
			noexcept
		=	default;
	};

	template
		<	typename
				t_tBody
		>
	struct
		BodyAdapter
	:	IBody
	{
		t_tBody
			m_vBody
		{};

		explicit(false) constexpr inline
		(	BodyAdapter
		)	()
			noexcept
		=	default;

		explicit(true) constexpr inline
		(	BodyAdapter
		)	(	auto
				&&
				...	i_rpArgument
			)
			noexcept
		:	m_vBody
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
			override
		{	return
				m_vBody
				.	ComputeVolume
					()
			;
		}
	};

	struct
		AnyBody
	{
		::std::any
			m_vAny
		;
		auto
		(*	m_fCast
		)	(	::std::any const
				&
			)
			noexcept
		->	IBody const
			&
		;

		template
			<	typename
					t_tBody
			>
		explicit(false) constexpr inline
		(	AnyBody
		)	(	::std::in_place_type_t
				<	t_tBody
				>
			,	auto
				&&
				...	i_rpArgument
			)
			noexcept
		:	m_vAny
			{	::std::in_place_type
				<	BodyAdapter
					<	t_tBody
					>
				>
			,	::std::forward<decltype(i_rpArgument)>
				(	i_rpArgument
				)
				...
			}
		,	m_fCast
			{	+[]	(	::std::any const
						&	i_rAny
					)
					noexcept
				->	IBody const
					&
				{	return
						::std::any_cast
						<	BodyAdapter
							<	t_tBody
							>	const
							&
						>(	i_rAny
						)
					;
				}
			}
		{}

		[[nodiscard]]
		auto constexpr inline
		(	operator->
		)	()	const
			noexcept
		->	IBody const
			*
		{	return
			&m_fCast
			(	m_vAny
			);
		}

		template
			<	typename
					t_tBody
			>
		[[nodiscard]]
		explicit(true) constexpr inline
		(	operator t_tBody&
		)	()	&
			noexcept
		{	return
				::std::any_cast
				<	BodyAdapter
					<	t_tBody
					>
					&
				>(	m_vAny
				)
				.	m_vBody
			;
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

	DynamicArray<AnyBody>
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
		,	[]	(	AnyBody const
					&	i_rBody3D
				)
			->	float
			{	return
					i_rBody3D
					->	ComputeVolume
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
