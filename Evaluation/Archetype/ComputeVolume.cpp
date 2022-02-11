export module Evaluation.Archetype.ComputeVolume;

export import Evaluation.Shared.DataTypes;
export import Evaluation.Archetype.Product;
export import ATR.VirtualArgument;
export import ATR.DependencyIDMap;

export namespace
	Bodies3D
{
	using
		VolumeComputer
	=	ATR::VirtualArgument
		<	void const
			*
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
}

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
		<	StaticDependency<"Product">
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
