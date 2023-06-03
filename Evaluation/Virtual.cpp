import Evaluation.Virtual;
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
	,	&MakeUniqueNoexcept<Cube>
	,	&MakeUniqueNoexcept<Cuboid>
	,	&MakeUniqueNoexcept<Pyramid>
	,	&MakeUniqueNoexcept<Sphere>
	,	&MakeUniqueNoexcept<Cylinder>
	,	&MakeUniqueNoexcept<Cone>
	,	&MakeUniqueNoexcept<Ellipsoid>
	,	&MakeUniqueNoexcept<Head>
	,	&ComputeVolume
	>(	::std::span
		{	i_aArgValue
		,	static_cast<::std::size_t>
			(	i_vArgCount
			)
		}
	);
}
