export module Evaluation.Archetype.BasicBody;

import Evaluation.Archetype.BasicShape;

import Evaluation.Shared.DataTypes;

import ATR.DataMember;

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
	>	extern
		LayoutConfig
		<	"BasicBody"
		>
	;
}
