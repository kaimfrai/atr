export module Evaluation.Archetype:BasicShape;

export import Evaluation.Shared;
import ATR.DataMember;

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
