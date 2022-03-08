import Evaluation.Dyno;
import Evaluation.CRTP;

import Evaluation.Shared;

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
		dyno::literals
	;
	using namespace
		Bodies3D
	;
	using
		Body3D
	=	dyno::poly
		<	VolumeComputer
		,	dyno::local_storage
			<	sizeof(Head)
			>
		>
	;
	constexpr
	auto
		fComputeVolume
	=	+[]	(	Body3D const
				&	i_rBody3D
			)
		{	return
				i_rBody3D
				.	virtual_
					(	"ComputeVolume"_s
					)()
			;
		}
	;
	return
		MainTemplate
		<	Body3D
		,	&CopyConstruct<Cube>
		,	&CopyConstruct<Cuboid>
		,	&CopyConstruct<Pyramid>
		,	&CopyConstruct<Sphere>
		,	&CopyConstruct<Cylinder>
		,	&CopyConstruct<Cone>
		,	&CopyConstruct<Ellipsoid>
		,	&CopyConstruct<Head>
		,	fComputeVolume
		>(	i_nArgCount
		,	i_aArgValue
		)
	;
}
