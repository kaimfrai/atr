export module Evaluation.Archetype.ComputeArea;

export import Evaluation.Shared.DataTypes;
export import Evaluation.Archetype.Product;
export import ATR.VirtualArgument;
export import ATR.DependencyIDMap;

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
	auto constexpr
	(	MapAddress
	)	(	ID_T<"ComputeArea">
		,	ProtoMemberInterface
			<	"ComputeAreaMultiplier"
			,	"Height"
			,	"Width"
			>	auto const
			&	i_rShape
		)
	->	Function
		<	"Product"_id
		,	ArgumentDependency
			<	decltype(i_rShape)
			,	"ComputeAreaMultiplier"_sv
			,	"Height"_sv
			,	"Width"_sv
			>
		>
	;
}


