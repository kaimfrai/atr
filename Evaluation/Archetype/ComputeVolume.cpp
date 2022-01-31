export module Evaluation.Archetype.ComputeVolume;

export import Evaluation.Shared.DataTypes;
export import Evaluation.Archetype.ReturnMember;
export import Evaluation.Archetype.Product;
export import ATR.VirtualArgument;
export import ATR.ConstantIDMap;

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
	template
		<	typename
				t_tBody
		>
	requires
		ValidAddress
		<	ID_T<"GetComputeVolumeMultiplier">
		,	t_tBody const
			&
		>
	and ValidAddress
		<	ID_T<"GetDepth">
		,	t_tBody const
			&
		>
	and	ValidAddress
		<	ID_T<"GetHeight">
		,	t_tBody const
			&
		>
	and	ValidAddress
		<	ID_T<"GetWidth">
		,	t_tBody const
			&
		>
	auto constexpr
		MapAddress
		(	ID_T<"ComputeVolume">
		,	t_tBody const
			&
		)
	{
		return
			MakeProductAddress
			<	t_tBody
			,	MapFuncID("GetComputeVolumeMultiplier")
			->* "Constant"
			,	MapFuncID("GetDepth")
			->* "Get0"
			,	MapFuncID("GetHeight")
			->* "Get1"
			,	MapFuncID("GetWidth")
			->* "Get2"
			>()
		;
	}
}
