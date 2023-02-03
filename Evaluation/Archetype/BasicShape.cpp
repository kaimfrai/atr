export module Evaluation.Archetype.BasicShape;

import Evaluation.Shared.DataTypes;
import ATR.Member.List;
import ATR.LayoutConfig;

export namespace
	ATR
{
	template<>
	DefineMembers
	<	Member::New
		<	"Height"
		,	Float
		>
	+	Member::New
		<	"Width"
		,	Float
		>
	+	Member::New
		<	"Color"
		,	RGBAColor
		>
	>	const extern
		LayoutConfig
		<	"BasicShape"
		>
	;
}
