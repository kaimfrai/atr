export module Evaluation.Archetype.BasicShape;

import Evaluation.Shared.DataTypes;
import ATR.MemberList;
import ATR.LayoutConfig;

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
	>	const extern
		LayoutConfig
		<	"BasicShape"
		>
	;
}
