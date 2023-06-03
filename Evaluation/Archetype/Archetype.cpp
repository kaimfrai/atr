export module Evaluation.Archetype;

export import Evaluation.Archetype.ComputeVolume;
export import Evaluation.Archetype.Cube;
export import Evaluation.Archetype.Cuboid;
export import Evaluation.Archetype.Pyramid;
export import Evaluation.Archetype.Sphere;
export import Evaluation.Archetype.Cylinder;
export import Evaluation.Archetype.Cone;
export import Evaluation.Archetype.Ellipsoid;
export import Evaluation.Archetype.Head;
export import Evaluation.Dependency.TypeConstruct;
import Evaluation.Dependency.DataTypes;

import ATR.Literals;
import ATR.Virtual.Element;
import ATR.Virtual.Entry;

import Std;

using ::ATR::ID;
using ::ATR::Virtual::Element;
using ::ATR::Virtual::Entry;

using namespace ATR::Literals;

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
	auto constexpr
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
