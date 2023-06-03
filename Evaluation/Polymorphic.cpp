import Evaluation.Polymorphic;
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
	,	&DefaultConstruct<Cube>
	,	&DefaultConstruct<Cuboid>
	,	&DefaultConstruct<Pyramid>
	,	&DefaultConstruct<Sphere>
	,	&DefaultConstruct<Cylinder>
	,	&DefaultConstruct<Cone>
	,	&DefaultConstruct<Ellipsoid>
	,	&DefaultConstruct<Head>
	,	&ComputeVolume
	>(	::std::span
		{	i_aArgValue
		,	static_cast<::std::size_t>
			(	i_vArgCount
			)
		}
	);
}
