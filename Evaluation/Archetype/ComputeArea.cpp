export module Evaluation.Archetype.ComputeArea;

import Evaluation.Archetype.Product;

import ATR.Address;
import ATR.Dependency;
import ATR.DependencyIDMap;
import ATR.Literals;

export namespace
	ATR
{
	using ::ATR::FunctionBody;

	auto constexpr
	(	MapAddress
	)	(	ID<"ComputeArea">
		,	ProtoMemberInterface
			<	"ComputeAreaMultiplier"
			,	"Height"
			,	"Width"
			>	auto const
			&	i_rShape
		)
	->	Function
		<	FunctionName<"Product">
		,	ArgumentDependency
			<	decltype(i_rShape)
			,	"ComputeAreaMultiplier"_id
			,	"Height"_id
			,	"Width"_id
			>
		>
	;
}


