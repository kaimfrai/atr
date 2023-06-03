export module Evaluation.Archetype.ComputeVolume;

import Evaluation.Archetype.Product;
import Evaluation.Dependency.DataTypes;

import ATR.Address;
import ATR.Dependency;
import ATR.DependencyIDMap;
import ATR.Literals;
import ATR.Virtual.Element;
import ATR.Virtual.Entry;

import Std;

export namespace
	ATR
{
	using ::ATR::FunctionBody;

	(	Function
	)	(	ID<"ComputeVolume">
		,	ProtoMemberInterface
			<	ID<"ComputeVolumeMultiplier">
			,	ID<"Depth">
			,	ID<"Height">
			,	ID<"Width">
			>	auto const
			&	i_rBody
		)
	->	Function
		<	Dependency<ID<"Product">>
		,	ArgumentDependency
			<	decltype(i_rBody)
			,	ID<"ComputeVolumeMultiplier">
			,	ID<"Depth">
			,	ID<"Height">
			,	ID<"Width">
			>
		>
	;

	using
		Body3D
	=	Virtual::Element
		<	4uz * sizeof(Float)
		,	alignof(Float)
		,	Virtual::Entry
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

	[[nodiscard]]
	auto constexpr
	(	ComputeVolume
	)	(	Body3D const
			&	i_rBody3D
		)
		noexcept
	->	Float
	{	return
		i_rBody3D
		(	"ComputeVolume"_id
		);
	}
}
