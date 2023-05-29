import Evaluation.TypeErasure;
import Evaluation.CRTP.Cube;
import Evaluation.CRTP.Cuboid;
import Evaluation.CRTP.Pyramid;
import Evaluation.CRTP.Sphere;
import Evaluation.CRTP.Cylinder;
import Evaluation.CRTP.Cone;
import Evaluation.CRTP.Ellipsoid;
import Evaluation.CRTP.Head;

import Evaluation.Dependency.CopyConstruct;
import Evaluation.Dependency.DataTypes;
import Evaluation.Dependency.MainTemplate;
import Evaluation.Dependency.TypeErasure;

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
