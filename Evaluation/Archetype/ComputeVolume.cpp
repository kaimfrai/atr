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
	(	MapAddress
	)	(	ID_T<"ComputeVolume">
		,	Meta::TypeToken<t_tBody> const&
		)
	{
		return
		MakeProductAddress
		<	t_tBody
		,	MapFuncID
			(	"GetComputeVolumeMultiplier"_id
			,	"Constant"_id
			)
		,	MapFuncID
			(	"GetDepth"_id
			,	"Get0"_id
			)
		,	MapFuncID
			(	"GetHeight"_id
			,	"Get1"_id
			)
		,	MapFuncID
			(	"GetWidth"_id
			,	"Get2"_id
			)
		>();
	}
}
