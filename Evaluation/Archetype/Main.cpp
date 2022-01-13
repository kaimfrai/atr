import Evaluation.Archetype.Bodies;

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
	using
		ID::operator""_fID
	;
	using namespace
		Bodies3D
	;
	using
		Body3D
	=	Function::VirtualStorage
		<	sizeof(Head)
		,	alignof(Float)
		,	Function::Virtual
			<	"ComputeVolume"
			,	auto(	void const
						*
					)
				noexcept
				->	Float
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
				(	"ComputeVolume"_fID
				)
			;
		}
	;
	return
		MainTemplate
		<	Body3D
		,	&TypeConstruct<Cube>
		,	&TypeConstruct<Cuboid>
		,	&TypeConstruct<Pyramid>
		,	&TypeConstruct<Sphere>
		,	&TypeConstruct<Cylinder>
		,	&TypeConstruct<Cone>
		,	&TypeConstruct<Ellipsoid>
		,	&TypeConstruct<Head>
		,	fComputeVolume
		>(	i_nArgCount
		,	i_aArgValue
		)
	;
}
