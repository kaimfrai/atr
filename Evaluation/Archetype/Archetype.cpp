export module Evaluation.Archetype;

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
import Evaluation.Dependency.TypeConstruct;
import Evaluation.Dependency.DataTypes;

import ATR.Literals;
import ATR.Virtual.Element;
import ATR.Virtual.Entry;

import Std;

export using ::TypeConstruct;
export using ::Meta::ID;

using ::ATR::Virtual::Element;
using ::ATR::Virtual::Entry;

using namespace ATR::Literals;

export namespace
	ATR
{
	using ::ATR::FunctionBody;
}

export namespace
	ATR::Member
{
	using ::ATR::Member::Configure;
}

export namespace
	Bodies3D
{
	using
		Body3D
	=	Element
		<	4uz * sizeof(Float)
		,	alignof(Float)
		,	Entry
			<	ID<"ComputeVolume">
			,	auto(	::std::byte const
						(&
						)	[]
					)
					noexcept
				->	Float
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
	->	Float
	{	return
		i_rBody3D
		(	"ComputeVolume"_id
		);
	}
}
