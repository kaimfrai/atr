import ATR;

import Evaluation.Archetype;
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
	using ATR::operator""_ID;
	using ATR::Type;

	using
		Body3D
	=	ATR::VirtualStorage
		<	sizeof(Type<"Head">)
		,	alignof(Float)
		,	ATR::Virtual
			<	"ComputeVolume"
			,	auto(	::std::byte const
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
	>(	std::span
		{	i_aArgValue
		,	static_cast<Meta::USize>(i_nArgCount)
		}
	);
}
