import Evaluation.CRTP;

import Evaluation.Shared;

import Evaluation.TypeErasure;

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
	=	boost::type_erasure::any
		<	boost::mpl::vector
			<	has_ComputeVolume
				<	auto()	const
					//	noexcept
					->	Float
				>
			,	boost::type_erasure::constructible
				<	boost::type_erasure::_self
					(	boost::type_erasure::_self
						&&
					)
				>
			,	boost::type_erasure::destructible<>
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
				.	ComputeVolume
					()
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
