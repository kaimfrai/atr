import Evaluation.Variant;

import Evaluation.CRTP.Cube;
import Evaluation.CRTP.Cuboid;
import Evaluation.CRTP.Pyramid;
import Evaluation.CRTP.Sphere;
import Evaluation.CRTP.Cylinder;
import Evaluation.CRTP.Cone;
import Evaluation.CRTP.Ellipsoid;
import Evaluation.CRTP.Head;

import Evaluation.Dependency.MainTemplate;
import Evaluation.Dependency.InPlaceConstruct;

import Std;

auto
	main
	(	int
			i_vArgCount
	,	char const
		*	i_aArgValue
		[]
	)
-> int
{
	using namespace
		Bodies3D
	;

	return
	MainTemplate
	<	::std::vector<Body3D>
	,	&InPlaceConstruct<Cube>
	,	&InPlaceConstruct<Cuboid>
	,	&InPlaceConstruct<Pyramid>
	,	&InPlaceConstruct<Sphere>
	,	&InPlaceConstruct<Cylinder>
	,	&InPlaceConstruct<Cone>
	,	&InPlaceConstruct<Ellipsoid>
	,	&InPlaceConstruct<Head>
	,	ComputeVolume
	>(	::std::span
		{	i_aArgValue
		,	static_cast<::std::size_t>
			(	i_vArgCount
			)
		}
	);
}
