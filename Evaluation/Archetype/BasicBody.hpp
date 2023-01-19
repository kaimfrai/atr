export module Evaluation.Archetype:BasicBody;

export import :BasicShape;

export import Evaluation.Shared;

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
