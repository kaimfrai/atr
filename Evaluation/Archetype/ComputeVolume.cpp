export module Evaluation.Archetype.ComputeVolume;

import Evaluation.Archetype.Product;

import ATR.Address;
import ATR.Dependency;
import ATR.DependencyIDMap;
import ATR.Literals;

export namespace
	ATR
{
	template
		<	typename
				t_tProto
		>
	concept
		ProtoBody
	=	ProtoMemberInterface<t_tProto, ID<"ComputeVolumeMultiplier">>
	and	ProtoMemberInterface<t_tProto, ID<"Depth">>
	and	ProtoMemberInterface<t_tProto, ID<"Height">>
	and	ProtoMemberInterface<t_tProto, ID<"Width">>
	;

	using ::ATR::FunctionBody;

	(	Function
	)	(	ID<"ComputeVolume">
		,	ProtoBody auto const
			&	i_rBody
		)
	->	Function
		<	Dependency<ID<"Product">>
		,	ArgumentDependency
			<	decltype(i_rBody)
			,	ID<"ComputeVolumeMultiplier">
			,	ID<"Depth">
			,	ID<"Height">
			,	ID<"Width">
			>
		>
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoShape
	=	ProtoMemberInterface<t_tProto, ID<"ComputeAreaMultiplier">>
	and	ProtoMemberInterface<t_tProto, ID<"Height">>
	and	ProtoMemberInterface<t_tProto, ID<"Width">>
	;

	(	Function
	)	(	ID<"ComputeVolume">
		,	ProtoShape auto const
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
