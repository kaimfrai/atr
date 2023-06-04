import Evaluation.Variant;
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
	,	&InPlaceConstruct<Circle>
	,	&InPlaceConstruct<Ellipse>
	,	&InPlaceConstruct<Rectangle>
	,	&InPlaceConstruct<Square>
	,	&InPlaceConstruct<Triangle>
	,	&InPlaceConstruct<Cube>
	,	&InPlaceConstruct<Cuboid>
	,	&InPlaceConstruct<Pyramid>
	,	&InPlaceConstruct<Sphere>
	,	&InPlaceConstruct<Cylinder>
	,	&InPlaceConstruct<Cone>
	,	&InPlaceConstruct<Ellipsoid>
	,	&InPlaceConstruct<Head>
	,	ComputeVolume
	>(	i_aArgValue
			[	1z
			]
	,	i_aArgValue
			[	2z
			]
	);
}
