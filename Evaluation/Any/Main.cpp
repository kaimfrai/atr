import Evaluation.Any.Bodies;
import Evaluation.CRTP.Cube;
import Evaluation.CRTP.Cuboid;
import Evaluation.CRTP.Pyramid;
import Evaluation.CRTP.Sphere;
import Evaluation.CRTP.Cylinder;
import Evaluation.CRTP.Cone;
import Evaluation.CRTP.Ellipsoid;
import Evaluation.CRTP.Head;

import Evaluation.Shared.InPlaceConstruct;
import Evaluation.Shared.MainTemplate;

auto
	main
	(	int
			i_nArgCount
	,	char const
		*	i_aArgValue
		[]
	)
-> int
{
	using namespace
		Bodies3D
	;
	using
		Body3D
	=	AnyBody
	;
	constexpr
	auto
		fComputeVolume
	=	+[]	(	Body3D const
				&	i_rBody3D
			)
		{	return
				i_rBody3D
				->	ComputeVolume
					()
			;
		}
	;
	return
		MainTemplate
		<	Body3D
		,	&InPlaceConstruct<Cube>
		,	&InPlaceConstruct<Cuboid>
		,	&InPlaceConstruct<Pyramid>
		,	&InPlaceConstruct<Sphere>
		,	&InPlaceConstruct<Cylinder>
		,	&InPlaceConstruct<Cone>
		,	&InPlaceConstruct<Ellipsoid>
		,	&InPlaceConstruct<Head>
		,	fComputeVolume
		>(	i_nArgCount
		,	i_aArgValue
		)
	;
}
