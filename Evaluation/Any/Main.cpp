import Evaluation.Any;
import Evaluation.CRTP;

import Evaluation.Shared;

import <any>;
import <utility>;

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
