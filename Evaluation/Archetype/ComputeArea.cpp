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

	(	Function
	)	(	ID<"ComputeArea">
		,	ProtoMemberInterface
			<	ID<"ComputeAreaMultiplier">
			,	ID<"Height">
			,	ID<"Width">
			>	auto const
			&	i_rShape
		)
	->	Function
		<	Dependency<ID<"Product">>
		,	ArgumentDependency
			<	decltype(i_rShape)
			,	ID<"ComputeAreaMultiplier">
			,	ID<"Height">
			,	ID<"Width">
			>
		>
	;
}


