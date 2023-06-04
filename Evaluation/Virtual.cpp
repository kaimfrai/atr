import Evaluation.Virtual;
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
	,	&MakeUniqueNoexcept<Circle>
	,	&MakeUniqueNoexcept<Ellipse>
	,	&MakeUniqueNoexcept<Rectangle>
	,	&MakeUniqueNoexcept<Square>
	,	&MakeUniqueNoexcept<Triangle>
	,	&MakeUniqueNoexcept<Cube>
	,	&MakeUniqueNoexcept<Cuboid>
	,	&MakeUniqueNoexcept<Pyramid>
	,	&MakeUniqueNoexcept<Sphere>
	,	&MakeUniqueNoexcept<Cylinder>
	,	&MakeUniqueNoexcept<Cone>
	,	&MakeUniqueNoexcept<Ellipsoid>
	,	&MakeUniqueNoexcept<Head>
	,	&ComputeVolume
	>(	i_aArgValue
			[	1z
			]
	,	i_aArgValue
			[	2z
			]
	);
}
