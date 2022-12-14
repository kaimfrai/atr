export module Evaluation.Archetype:ComputeVolume;

export import :Product;

export import ATR;

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
		<	"Product"_ID
		,	ArgumentDependency
			<	decltype(i_rBody)
			,	"ComputeVolumeMultiplier"_SV
			,	"Depth"_SV
			,	"Height"_SV
			,	"Width"_SV
			>
		>
	;
}
