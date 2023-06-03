import Evaluation.Archetype.ComputeVolume;
import Evaluation.Archetype.Cube;
import Evaluation.Archetype.Cuboid;
import Evaluation.Archetype.Pyramid;
import Evaluation.Archetype.Sphere;
import Evaluation.Archetype.Cylinder;
import Evaluation.Archetype.Cone;
import Evaluation.Archetype.Ellipsoid;
import Evaluation.Archetype.Head;

import Evaluation.Dependency.DynamicArray;
import Evaluation.Dependency.MainTemplate;
import Evaluation.Dependency.TypeConstruct;

import Std;

auto
(	main
)	(	int
			i_vArgCount
	,	char const
		*	i_aArgValue
		[]
	)
-> int
{
	using namespace ATR;

	return
	MainTemplate
	<	DynamicArray<Body3D>
	,	&TypeConstruct<ID<"Cube">>
	,	&TypeConstruct<ID<"Cuboid">>
	,	&TypeConstruct<ID<"Pyramid">>
	,	&TypeConstruct<ID<"Sphere">>
	,	&TypeConstruct<ID<"Cylinder">>
	,	&TypeConstruct<ID<"Cone">>
	,	&TypeConstruct<ID<"Ellipsoid">>
	,	&TypeConstruct<ID<"Head">>
	,	&ComputeVolume
	>(	::std::span
		{	i_aArgValue
		,	static_cast<::std::size_t>
			(	i_vArgCount
			)
		}
	);
}
