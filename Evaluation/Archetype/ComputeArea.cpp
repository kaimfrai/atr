export module Evaluation.Archetype.ComputeArea;

export import ATR.DependencyIDMap;
export import Evaluation.Archetype.Product;

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


