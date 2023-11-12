export module Evaluation.TagATR.ComputeVolume;

import Evaluation.TagATR.Product;

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
	=	ProtoMemberInterface<t_tProto, "ComputeSizeMultiplier">
	and	ProtoMemberInterface<t_tProto, "Height">
	and	ProtoMemberInterface<t_tProto, "Width">
	;

	template
		<	typename
				t_tProto
		>
	concept
		ProtoBody
	=	ProtoShape<t_tProto>
	and	ProtoMemberInterface<t_tProto, "Depth">
	;

	using ::ATR::FunctionBody;

	(	Function
	)	(	ID<"ComputeVolume">
		,	ProtoBody auto const
			&	i_rBody
		)
	->	Function
		<	GlobalDependency<"Product">
		,	ArgumentDependency
			<	decltype(i_rBody)
			,	"ComputeSizeMultiplier"
			,	"Height"
			,	"Width"
			,	"Depth"
			>
		>
	;

	(	Function
	)	(	ID<"ComputeVolume">
		,	ProtoShape auto const
			&	i_rShape
		)
	->	Function
		<	GlobalDependency<"Product">
		,	ArgumentDependency
			<	decltype(i_rShape)
			,	"ComputeSizeMultiplier"
			,	"Height"
			,	"Width"
			>
		>
	;
}
