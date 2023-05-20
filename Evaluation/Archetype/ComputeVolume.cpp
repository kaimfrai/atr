export module Evaluation.Archetype.ComputeVolume;

import Evaluation.Archetype.Product;

import ATR.DependencyIDMap;
import ATR.Literals;
import ATR.Address;

export namespace
	ATR
{
	using ::ATR::Body;

	auto constexpr
	(	MapAddress
	)	(	ID_T<"ComputeVolume">
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
