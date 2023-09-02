import Evaluation.Dependency.DynamicArray;
import Evaluation.Dependency.PseudoRandomSequence;

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

import Std;

namespace
	Bodies3D
{
	struct Circle : Shape3D<::Shapes2D::Circle>{};
	struct Ellipse : Shape3D<::Shapes2D::Ellipse>{};
	struct Rectangle : Shape3D<::Shapes2D::Rectangle>{};
	struct Square : Shape3D<::Shapes2D::Square>{};
	struct Triangle : Shape3D<::Shapes2D::Triangle>{};

	using ::Bodies3D::Cube;
	using ::Bodies3D::Cuboid;
	using ::Bodies3D::Pyramid;
	using ::Bodies3D::Sphere;
	using ::Bodies3D::Cylinder;
	using ::Bodies3D::Cone;
	using ::Bodies3D::Ellipsoid;
	using ::Bodies3D::Head;

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
		;

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
			)
			noexcept
		:	m_vAny
			{	::std::in_place_type
				<	BodyAdapter
					<	t_tBody
					>
				>
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
					);
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
	};

	[[nodiscard]]
	auto constexpr inline
	(	ComputeVolume
	)	(	AnyBody const
			&	i_rBody3D
		)
		noexcept
	->	float
	{	return
		i_rBody3D
		->	ComputeVolume
			()
		;
	}
}

auto
(	main
)	(	int
	,	char const
		*	i_aArgValue
		[]
	)
-> int
{
	using namespace Bodies3D;

	PseudoRandomSequence
		vRandomSequence
	{	i_aArgValue
		[	1z
		]
	,	i_aArgValue
		[	2z
		]
	};

	DynamicArray<AnyBody>
		vElements
	{	vRandomSequence
		.	size
			()
	};

	for	(	auto
				vRandom
			:	vRandomSequence
		)
	{
		switch
			(	vRandom
			%	13
			)
		{	case
				0
			:	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Circle
						>
					)
				;
			break;

			case
				1
			:	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Ellipse
						>
					)
				;
			break;

			case
				2
			:	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Rectangle
						>
					)
				;
			break;

			case
				3
			:	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Square
						>
					)
				;
			break;

			case
				4
			:	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Triangle
						>
					)
				;
			break;

			case
				5
			:	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Cube
						>
					)
				;
			break;

			case
				6
			:	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Cuboid
						>
					)
				;
			break;

			case
				7
			:	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Pyramid
						>
					)
				;
			break;

			case
				8
			:	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Sphere
						>
					)
				;
			break;

			case
				9
			:	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Cylinder
						>
					)
				;
			break;

			case
				10
			:	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Cone
						>
					)
				;
			break;

			case
				11
			:	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Ellipsoid
						>
					)
				;
			break;

			case
				12
			:	vElements
				.	emplace_back
					(	::std::in_place_type
						<	Head
						>
					)
				;
			break;
		}
	}

	float
		vLoopSum
	{};

	for	(	auto
			&	rBody
			:	vElements
		)
	{
		vLoopSum
		+=	ComputeVolume
			(	rBody
			)
		;
	}

	auto static constexpr
		vExpectedValue
	=	0
	;

	return
		static_cast<int>
		(	vLoopSum
		)
	-	vExpectedValue
	;
}
