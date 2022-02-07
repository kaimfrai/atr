export module Evaluation.Archetype.ComputeArea;

export import Evaluation.Shared.DataTypes;
export import Evaluation.Archetype.ReturnMember;
export import Evaluation.Archetype.Product;
export import ATR.VirtualArgument;
export import ATR.ConstantIDMap;

export namespace
	Shapes2D
{
	using
		AreaComputer
	=	ATR::VirtualArgument
		<	void const
			*
		,	ATR::Virtual
			<	"ComputeArea"
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
				t_tShape
		>
	requires
		ValidAddress
		<	ID_T<"GetComputeAreaMultiplier">
		,	t_tShape const
			&
		>
	and ValidAddress
		<	ID_T<"GetHeight">
		,	t_tShape const
			&
		>
	and	ValidAddress
		<	ID_T<"GetWidth">
		,	t_tShape const
			&
		>
	auto constexpr
	(	MapAddress
	)	(	ID_T<"ComputeArea">
		,	Meta::TypeToken<t_tShape> const&
		)
	{
		return
		MakeProductAddress
		<	t_tShape
		,	MapFuncID("GetComputeAreaMultiplier"_id)
		->* "Constant"_id
		,	MapFuncID("GetHeight"_id)
		->* "Get0"_id
		,	MapFuncID("GetWidth"_id)
		->* "Get1"_id
		>();
	}
}


