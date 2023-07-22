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
		ProtoShape
	=	ProtoMemberInterface<t_tProto, ID<"ComputeSizeMultiplier">>
	and	ProtoMemberInterface<t_tProto, ID<"Height">>
	and	ProtoMemberInterface<t_tProto, ID<"Width">>
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoBody
	=	ProtoShape<t_tProto>
	and	ProtoMemberInterface<t_tProto, ID<"Depth">>
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
			,	ID<"ComputeSizeMultiplier">
			,	ID<"Height">
			,	ID<"Width">
			,	ID<"Depth">
			>
		>
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
			,	ID<"ComputeSizeMultiplier">
			,	ID<"Height">
			,	ID<"Width">
			>
		>
	;
}
