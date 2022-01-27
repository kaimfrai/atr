import Evaluation.Archetype.Cone;
import Evaluation.Archetype.Cube;
import Evaluation.Archetype.Cuboid;
import Evaluation.Archetype.Cylinder;
import Evaluation.Archetype.Ellipsoid;
import Evaluation.Archetype.Head;
import Evaluation.Archetype.Pyramid;
import Evaluation.Archetype.Sphere;

import Evaluation.Shared.TypeConstruct;
import Evaluation.Shared.MainTemplate;

static_assert
(	Function::Address<::ID::MakeT<"ComputeVolume">, Bodies3D::Head const&>()
==	Function::Address<::ID::MakeT<"ComputeVolume">, Bodies3D::Sphere const&>()
);

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
	using ID::operator""_id;
	using namespace Bodies3D;

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

	auto constexpr
		fComputeVolume
	=	+[]	(	Body3D const
				&	i_rBody3D
			)
		{	return
				i_rBody3D
				(	"ComputeVolume"_id
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
