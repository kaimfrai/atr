export module Evaluation.Archetype:BasicBody;

export import :BasicShape;

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
