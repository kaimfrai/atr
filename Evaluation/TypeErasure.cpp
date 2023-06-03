import Evaluation.TypeErasure;
import Evaluation.CRTP.Cube;
import Evaluation.CRTP.Cuboid;
import Evaluation.CRTP.Pyramid;
import Evaluation.CRTP.Sphere;
import Evaluation.CRTP.Cylinder;
import Evaluation.CRTP.Cone;
import Evaluation.CRTP.Ellipsoid;
import Evaluation.CRTP.Head;

import Evaluation.Dependency.DefaultConstruct;
import Evaluation.Dependency.DataTypes;
import Evaluation.Dependency.DynamicArray;
import Evaluation.Dependency.MainTemplate;
import Evaluation.Dependency.TypeErasure;

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
