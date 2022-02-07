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
	template
		<	typename
				t_tBody
		>
	requires
		MemberAccessIDOf
		<	ID_T<"ComputeVolumeMultiplier">
		,	t_tBody const&
		>
	and MemberAccessIDOf
		<	ID_T<"Depth">
		,	t_tBody const&
		>
	and	MemberAccessIDOf
		<	ID_T<"Height">
		,	t_tBody const&
		>
	and	MemberAccessIDOf
		<	ID_T<"Width">
		,	t_tBody const&
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
		>();
	}
}
