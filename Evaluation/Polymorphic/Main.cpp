import Evaluation.Polymorphic.Bodies;

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
		>(	i_nArgCount
		,	i_aArgValue
		)
	;
}