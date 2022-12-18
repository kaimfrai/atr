import Evaluation.Virtual;

import Evaluation.Shared;

import Std;

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
	=	std::unique_ptr
		<	IBody
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
				->	ComputeVolume
					()
			;
		}
	;
	return
	MainTemplate
	<	Body3D
	,	&std::make_unique<Cube>
	,	&std::make_unique<Cuboid>
	,	&std::make_unique<Pyramid>
	,	&std::make_unique<Sphere>
	,	&std::make_unique<Cylinder>
	,	&std::make_unique<Cone>
	,	&std::make_unique<Ellipsoid>
	,	&std::make_unique<Head>
	,	fComputeVolume
	>(	std::span
		{	i_aArgValue
		,	static_cast<Meta::USize>(i_nArgCount)
		}
	);
}
