export module Evaluation.Archetype:ComputeArea;

export import :Product;

export import ATR;

export namespace
	ATR
{
	auto constexpr
	(	MapAddress
	)	(	Meta::ID_T<"ComputeArea">
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


