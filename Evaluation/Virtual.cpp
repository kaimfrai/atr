import Evaluation.Dependency.DynamicArray;
import Evaluation.Dependency.PseudoRandomSequence;

import Evaluation.Virtual.Cube;
import Evaluation.Virtual.Circle;
import Evaluation.Virtual.Ellipse;
import Evaluation.Virtual.Rectangle;
import Evaluation.Virtual.Square;
import Evaluation.Virtual.Triangle;
import Evaluation.Virtual.Shape3D;
import Evaluation.Virtual.Cuboid;
import Evaluation.Virtual.Pyramid;
import Evaluation.Virtual.Sphere;
import Evaluation.Virtual.Cylinder;
import Evaluation.Virtual.Cone;
import Evaluation.Virtual.Ellipsoid;
import Evaluation.Virtual.Head;
import Evaluation.Virtual.IBody;

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

	using
		Body3D
	=	::std::unique_ptr
		<	IBody
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
->	int
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
					(	::std::make_unique
						<	Circle
						>()
					)
				;
			break;

			case
				1
			:	vElements
				.	emplace_back
					(	::std::make_unique
						<	Ellipse
						>()
					)
				;
			break;

			case
				2
			:	vElements
				.	emplace_back
					(	::std::make_unique
						<	Rectangle
						>()
					)
				;
			break;

			case
				3
			:	vElements
				.	emplace_back
					(	::std::make_unique
						<	Square
						>()
					)
				;
			break;

			case
				4
			:	vElements
				.	emplace_back
					(	::std::make_unique
						<	Triangle
						>()
					)
				;
			break;

			case
				5
			:	vElements
				.	emplace_back
					(	::std::make_unique
						<	Cube
						>()
					)
				;
			break;

			case
				6
			:	vElements
				.	emplace_back
					(	::std::make_unique
						<	Cuboid
						>()
					)
				;
			break;

			case
				7
			:	vElements
				.	emplace_back
					(	::std::make_unique
						<	Pyramid
						>()
					)
				;
			break;

			case
				8
			:	vElements
				.	emplace_back
					(	::std::make_unique
						<	Sphere
						>()
					)
				;
			break;

			case
				9
			:	vElements
				.	emplace_back
					(	::std::make_unique
						<	Cylinder
						>()
					)
				;
			break;

			case
				10
			:	vElements
				.	emplace_back
					(	::std::make_unique
						<	Cone
						>()
					)
				;
			break;

			case
				11
			:	vElements
				.	emplace_back
					(	::std::make_unique
						<	Ellipsoid
						>()
					)
				;
			break;

			case
				12
			:	vElements
				.	emplace_back
					(	::std::make_unique
						<	Head
						>()
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
