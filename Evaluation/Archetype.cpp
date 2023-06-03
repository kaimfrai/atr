import ATR.Virtual.Entry;
import ATR.Virtual.Element;
import ATR.Literals;
import ATR.Instance;

import Evaluation.Archetype.ComputeVolume;
import Evaluation.Archetype.Cube;
import Evaluation.Archetype.Cuboid;
import Evaluation.Archetype.Pyramid;
import Evaluation.Archetype.Sphere;
import Evaluation.Archetype.Cylinder;
import Evaluation.Archetype.Cone;
import Evaluation.Archetype.Ellipsoid;
import Evaluation.Archetype.Head;

import Evaluation.Dependency.DataTypes;
import Evaluation.Dependency.DynamicArray;
import Evaluation.Dependency.MainTemplate;
import Evaluation.Dependency.TypeConstruct;

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
	using ATR::operator""_id;
	using ATR::ID;

	using
		Body3D
	=	::ATR::Virtual::Element
		<	4uz * sizeof(Float)
		,	alignof(Float)
		,	::ATR::Virtual::Entry
			<	ID<"ComputeVolume">
			,	auto(	::std::byte const
						(&
						)	[]
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
			);
		}
	;

	return
	MainTemplate
	<	DynamicArray<Body3D>
	,	&TypeConstruct<ID<"Cube">>
	,	&TypeConstruct<ID<"Cuboid">>
	,	&TypeConstruct<ID<"Pyramid">>
	,	&TypeConstruct<ID<"Sphere">>
	,	&TypeConstruct<ID<"Cylinder">>
	,	&TypeConstruct<ID<"Cone">>
	,	&TypeConstruct<ID<"Ellipsoid">>
	,	&TypeConstruct<ID<"Head">>
	,	fComputeVolume
	>(	::std::span
		{	i_aArgValue
		,	static_cast<::std::size_t>
			(	i_vArgCount
			)
		}
	);
}
