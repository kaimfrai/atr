import ATR.VirtualArgument;

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
import Evaluation.Shared.SizeCheck;

static_assert(AdditionalSize<ATR::Type<"Cube">, 1, 1> == 4);
static_assert(SizeMinimal<ATR::Type<"Cube">, 1, 1>);

static_assert(AdditionalSize<ATR::Type<"Cuboid">, 3, 1> == 4);
static_assert(SizeMinimal<ATR::Type<"Cuboid">, 3, 1>);

static_assert(AdditionalSize<ATR::Type<"Pyramid">, 3, 1> == 4);
static_assert(SizeMinimal<ATR::Type<"Pyramid">, 3, 1>);

static_assert(AdditionalSize<ATR::Type<"Sphere">, 1, 1> == 4);
static_assert(SizeMinimal<ATR::Type<"Sphere">, 1, 1>);

static_assert(AdditionalSize<ATR::Type<"Cylinder">, 2, 1> == 4);
static_assert(SizeMinimal<ATR::Type<"Cylinder">, 2, 1>);

static_assert(AdditionalSize<ATR::Type<"Cone">, 2, 1> == 4);
static_assert(SizeMinimal<ATR::Type<"Cone">, 2, 1>);

static_assert(AdditionalSize<ATR::Type<"Ellipsoid">, 3, 1> == 4);
static_assert(SizeMinimal<ATR::Type<"Ellipsoid">, 3, 1>);

static_assert(AdditionalSize<ATR::Type<"Head">, 3, 3> == 4);
static_assert(SizeMinimal<ATR::Type<"Head">, 3, 3>);

static_assert
(	ATR::Address<ATR::ID_T<"ComputeVolume">, ATR::Type<"Head"> const&>
==	ATR::Address<ATR::ID_T<"ComputeVolume">, ATR::Type<"Sphere"> const&>
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
	using ATR::operator""_ID;
	using ATR::Type;

	using
		Body3D
	=	ATR::VirtualStorage
		<	sizeof(Type<"Head">)
		,	alignof(Float)
		,	ATR::Virtual
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
			(	"ComputeVolume"_ID
			);
		}
	;

	return
	MainTemplate
	<	Body3D
	,	&TypeConstruct<Type<"Cube">>
	,	&TypeConstruct<Type<"Cuboid">>
	,	&TypeConstruct<Type<"Pyramid">>
	,	&TypeConstruct<Type<"Sphere">>
	,	&TypeConstruct<Type<"Cylinder">>
	,	&TypeConstruct<Type<"Cone">>
	,	&TypeConstruct<Type<"Ellipsoid">>
	,	&TypeConstruct<Type<"Head">>
	,	fComputeVolume
	>(	i_nArgCount
	,	i_aArgValue
	);
}
