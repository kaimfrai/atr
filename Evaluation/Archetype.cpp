import Evaluation.Archetype;
import Evaluation.Dependency.DynamicArray;
import Evaluation.Dependency.MainTemplate;

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
	>(	i_aArgValue
			[	1z
			]
	,	i_aArgValue
			[	2z
			]
	);
}
