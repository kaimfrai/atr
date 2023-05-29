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
}
