import Evaluation.Dyno;
import Evaluation.Dyno.Library;
import Evaluation.CRTP.Cube;
import Evaluation.CRTP.Cuboid;
import Evaluation.CRTP.Pyramid;
import Evaluation.CRTP.Sphere;
import Evaluation.CRTP.Cylinder;
import Evaluation.CRTP.Cone;
import Evaluation.CRTP.Ellipsoid;
import Evaluation.CRTP.Head;

import Evaluation.Shared.MainTemplate;
import Evaluation.Shared.CopyConstruct;

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
	<	::std::vector<Body3D>
	,	&CopyConstruct<Cube>
	,	&CopyConstruct<Cuboid>
	,	&CopyConstruct<Pyramid>
	,	&CopyConstruct<Sphere>
	,	&CopyConstruct<Cylinder>
	,	&CopyConstruct<Cone>
	,	&CopyConstruct<Ellipsoid>
	,	&CopyConstruct<Head>
	,	fComputeVolume
	>(	::std::span
		{	i_aArgValue
		,	static_cast<::std::size_t>
			(	i_vArgCount
			)
		}
	);
}
