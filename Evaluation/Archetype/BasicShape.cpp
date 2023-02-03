export module Evaluation.Archetype.BasicShape;

import Evaluation.Shared.DataTypes;
import ATR.Member.List;
import ATR.Member.Union;
import ATR.Member.Definition;

export namespace
	ATR::Member
{
	template<>
	Definition
	<	New
		<	"Height"
		,	Float
		>
	+	New
		<	"Width"
		,	Float
		>
	+	New
		<	"Color"
		,	RGBAColor
		>
	>	const extern
		Definition_For
		<	"BasicShape"
		>
	;
}
