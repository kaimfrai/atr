export module Evaluation.Archetype.ComputeArea;

export import ATR;
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
		<	"Product"_ID
		,	ArgumentDependency
			<	decltype(i_rShape)
			,	"ComputeAreaMultiplier"_SV
			,	"Height"_SV
			,	"Width"_SV
			>
		>
	;
}


