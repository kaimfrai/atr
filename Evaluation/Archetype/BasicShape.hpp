export module Evaluation.Archetype:BasicShape;

export import Evaluation.Shared;
export import ATR;

export namespace
	ATR
{
	template<>
	DefineMembers
	<	Member
		<	"Height"
		,	Float
		>
	+	Member
		<	"Width"
		,	Float
		>
	+	Member
		<	"Color"
		,	RGBAColor
		>
	>	extern
		LayoutConfig
		<	"BasicShape"
		>
	;
}
