export module Evaluation.Archetype.BasicBody;

import Evaluation.Archetype.BasicShape;
import Evaluation.Shared.DataTypes;

import ATR.Member.List;
import ATR.LayoutConfig;

export namespace
	ATR
{
	template<>
	DefineMembers
	<	LayoutConfig
		<	"BasicShape"
		>
	+	Member::New
		<	"Depth"
		,	Float
		>
	>	const extern
		LayoutConfig
		<	"BasicBody"
		>
	;
}
