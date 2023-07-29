import Evaluation.Dependency.DynamicArray;
import Evaluation.Dependency.PseudoRandomSequence;

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
import ATR.Virtual.Element;
import ATR.Virtual.Entry;

import Meta.ID;

import Std;

using ::ATR::Virtual::Element;
using ::ATR::Virtual::Entry;
using ::Meta::ID;
using ::Meta::ProtoID;

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
					(	::std::byte const
						(&
						)	[]
					)
					noexcept
				->	float
			>
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
		(	"ComputeVolume"_id
		);
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

	auto const
		vRandomSeed
	=	::std::strtoull
		(	i_aArgValue
				[	1z
				]
		,	nullptr
		,	10
		)
	;
	auto const
		vRandomSequenceLength
	=	::std::strtoll
		(	i_aArgValue
				[	2z
				]
		,	nullptr
		,	10
		)
	;

	auto static constexpr
		vExpectedValue
	=	0
	;

	PseudoRandomSequence
		vRandomSequence
	{	vRandomSeed
	,	vRandomSequenceLength
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
					(	"Circle"_id
					)
				;
			break;

			case
				1
			:	vElements
				.	emplace_back
					(	"Ellipse"_id
					)
				;
			break;

			case
				2
			:	vElements
				.	emplace_back
					(	"Rectangle"_id
					)
				;
			break;

			case
				3
			:	vElements
				.	emplace_back
					(	"Square"_id
					)
				;
			break;

			case
				4
			:	vElements
				.	emplace_back
					(	"Triangle"_id
					)
				;
			break;

			case
				5
			:	vElements
				.	emplace_back
					(	"Cube"_id
					)
				;
			break;

			case
				6
			:	vElements
				.	emplace_back
					(	"Cuboid"_id
					)
				;
			break;

			case
				7
			:	vElements
				.	emplace_back
					(	"Pyramid"_id
					)
				;
			break;

			case
				8
			:	vElements
				.	emplace_back
					(	"Sphere"_id
					)
				;
			break;

			case
				9
			:	vElements
				.	emplace_back
					(	"Cylinder"_id
					)
				;
			break;

			case
				10
			:	vElements
				.	emplace_back
					(	"Cone"_id
					)
				;
			break;

			case
				11
			:	vElements
				.	emplace_back
					(	"Ellipsoid"_id
					)
				;
			break;

			case
				12
			:	vElements
				.	emplace_back
					(	"Head"_id
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


	return
		static_cast<int>
		(	vLoopSum
		)
	-	vExpectedValue
	;
}
