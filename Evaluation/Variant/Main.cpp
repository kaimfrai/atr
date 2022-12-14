import Evaluation.CRTP;

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
	=	std::variant
		<	Cube
		,	Cuboid
		,	Pyramid
		,	Sphere
		,	Cylinder
		,	Cone
		,	Ellipsoid
		,	Head
		>
	;
	constexpr
	auto
		fComputeVolume
	=	+[]	(	Body3D const
				&	i_rBody3D
			)
		{	return
				std::visit
				(	[]	(	auto const
							&	i_rBody
						)
					{	return
							i_rBody
							.	ComputeVolume
								()
						;
					}
					,	i_rBody3D
				)
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
	>(	std::span
		{	i_aArgValue
		,	static_cast<Meta::USize>(i_nArgCount)
		}
	);
}
