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
		,	ProtoObjectMember
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
			,	MapID
				(	"ComputeVolumeMultiplier"_id
				,	"a"_id
				)
			,	MapID
				(	"Depth"_id
				,	"b"_id
				)
			,	MapID
				(	"Height"_id
				,	"c"_id
				)
			,	MapID
				(	"Width"_id
				,	"d"_id
				)
			>
		>
	;
}
