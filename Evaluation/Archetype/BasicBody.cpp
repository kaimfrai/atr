export module Evaluation.Archetype.BasicBody;

import Evaluation.Archetype.BasicShape;
import Evaluation.Shared.DataTypes;

import ATR.MemberList;
import ATR.LayoutConfig;

export namespace
	ATR
{
	template<>
	DefineMembers
	<	LayoutConfig
		<	"BasicShape"
		>
	+	Member
		<	"Depth"
		,	Float
		>
	>	const extern
		LayoutConfig
		<	"BasicBody"
		>
	;
}
