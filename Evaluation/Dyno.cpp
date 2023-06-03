import Evaluation.Dyno;
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
	,	&DefaultConstruct<Cube>
	,	&DefaultConstruct<Cuboid>
	,	&DefaultConstruct<Pyramid>
	,	&DefaultConstruct<Sphere>
	,	&DefaultConstruct<Cylinder>
	,	&DefaultConstruct<Cone>
	,	&DefaultConstruct<Ellipsoid>
	,	&DefaultConstruct<Head>
	,	&ComputeVolume
	>(	i_aArgValue
			[	1z
			]
	,	i_aArgValue
			[	2z
			]
	);
}
