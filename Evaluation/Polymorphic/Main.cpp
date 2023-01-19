import Evaluation.Polymorphic;
import Evaluation.CRTP;

import Evaluation.Shared.MainTemplate;
import Evaluation.Shared.CopyConstruct;
import Meta.Size;

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
	=	polymorphic::object
		<	auto(	ComputeVolume
				)	const
			//noexcept
			->	Float
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
				.	call
					<	ComputeVolume
					>()
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
	>(	std::span
		{	i_aArgValue
		,	static_cast<Meta::USize>(i_nArgCount)
		}
	);
}
