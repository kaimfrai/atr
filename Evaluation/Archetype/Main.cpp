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
import Evaluation.Shared.DataTypes;
import Evaluation.Shared.MainTemplate;
import Evaluation.Shared.TypeConstruct;

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
	using ATR::operator""_id;
	using ATR::Type;
	using ATR::ID;

	using
		Body3D
	=	::ATR::Virtual::Element
		<	5 * sizeof(Float)
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
	<	Body3D
	,	&TypeConstruct<"Cube">
	,	&TypeConstruct<"Cuboid">
	,	&TypeConstruct<"Pyramid">
	,	&TypeConstruct<"Sphere">
	,	&TypeConstruct<"Cylinder">
	,	&TypeConstruct<"Cone">
	,	&TypeConstruct<"Ellipsoid">
	,	&TypeConstruct<"Head">
	,	fComputeVolume
	>(	::std::span
		{	i_aArgValue
		,	static_cast<::std::size_t>
			(	i_nArgCount
			)
		}
	);
}
