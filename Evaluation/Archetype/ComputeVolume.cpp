export module Evaluation.Archetype.ComputeVolume;

import Evaluation.Archetype.Product;

import ATR.Address;
import ATR.Dependency;
import ATR.DependencyIDMap;
import ATR.Literals;

export namespace
	ATR
{
	using ::ATR::FunctionBody;

	auto constexpr
	(	MapAddress
	)	(	ID<"ComputeVolume">
		,	ProtoMemberInterface
			<	"ComputeVolumeMultiplier"
			,	"Depth"
			,	"Height"
			,	"Width"
			>	auto const
			&	i_rBody
		)
	->	Function
		<	FunctionName<"Product">
		,	ArgumentDependency
			<	decltype(i_rBody)
			,	"ComputeVolumeMultiplier"_id
			,	"Depth"_id
			,	"Height"_id
			,	"Width"_id
			>
		>
	;
}
