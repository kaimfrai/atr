import <polymorphic.hpp>;

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
		ComputeVolumeTag
	{};

	[[nodiscard]]
	auto constexpr inline
	(	poly_extend
	)	(	ComputeVolumeTag
		,	auto const
			&	i_rBody
		)
		noexcept
	->	float
	{	return
		i_rBody
		.	ComputeVolume
			()
		;
	}


	using
		Body3D
	=	polymorphic::object
		<	auto
				(	ComputeVolumeTag
				)	const
			->	float
		>
	;

	[[nodiscard]]
	auto constexpr inline
	(	ComputeVolume
	)	(	Body3D const
			&	i_rBody3D
		)
		noexcept
	->	float
	{	return
		i_rBody3D
		.	call
			<	ComputeVolumeTag
			>()
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

	DynamicArray<Body3D>
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
					(	Circle
						{}
					)
				;
			break;

			case
				1
			:	vElements
				.	emplace_back
					(	Ellipse
						{}
					)
				;
			break;

			case
				2
			:	vElements
				.	emplace_back
					(	Rectangle
						{}
					)
				;
			break;

			case
				3
			:	vElements
				.	emplace_back
					(	Square
						{}
					)
				;
			break;

			case
				4
			:	vElements
				.	emplace_back
					(	Triangle
						{}
					)
				;
			break;

			case
				5
			:	vElements
				.	emplace_back
					(	Cube
						{}
					)
				;
			break;

			case
				6
			:	vElements
				.	emplace_back
					(	Cuboid
						{}
					)
				;
			break;

			case
				7
			:	vElements
				.	emplace_back
					(	Pyramid
						{}
					)
				;
			break;

			case
				8
			:	vElements
				.	emplace_back
					(	Sphere
						{}
					)
				;
			break;

			case
				9
			:	vElements
				.	emplace_back
					(	Cylinder
						{}
					)
				;
			break;

			case
				10
			:	vElements
				.	emplace_back
					(	Cone
						{}
					)
				;
			break;

			case
				11
			:	vElements
				.	emplace_back
					(	Ellipsoid
						{}
					)
				;
			break;

			case
				12
			:	vElements
				.	emplace_back
					(	Head
						{}
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
