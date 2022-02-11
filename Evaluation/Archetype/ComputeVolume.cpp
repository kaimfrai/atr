export module Evaluation.Archetype.ComputeVolume;

export import ATR.DependencyIDMap;
export import Evaluation.Archetype.Product;

export namespace
	ATR
{
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
		<	"Product"_id
		,	ArgumentDependency
			<	decltype(i_rBody)
			,	"ComputeVolumeMultiplier"_sv
			,	"Depth"_sv
			,	"Height"_sv
			,	"Width"_sv
			>
		>
	;
}
