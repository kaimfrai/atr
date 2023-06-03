import Evaluation.Archetype;
import Evaluation.Dependency.DynamicArray;
import Evaluation.Dependency.MainTemplate;

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
	using namespace Bodies3D;

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
