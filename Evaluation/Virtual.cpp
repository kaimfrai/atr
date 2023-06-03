import Evaluation.Virtual.IBody;
import Evaluation.Virtual.Cube;
import Evaluation.Virtual.Cuboid;
import Evaluation.Virtual.Pyramid;
import Evaluation.Virtual.Sphere;
import Evaluation.Virtual.Cylinder;
import Evaluation.Virtual.Cone;
import Evaluation.Virtual.Ellipsoid;
import Evaluation.Virtual.Head;

import Evaluation.Dependency.DynamicArray;
import Evaluation.Dependency.MainTemplate;
import Evaluation.Dependency.MakeUniqueNoexcept;

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
