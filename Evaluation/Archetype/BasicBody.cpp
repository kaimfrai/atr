export module Evaluation.Archetype.BasicBody;

import Evaluation.Archetype.BasicShape;
import Evaluation.Shared.DataTypes;

import ATR.Member.List;
import ATR.Member.Definition;

export namespace
	ATR::Member
{
	template<>
	Definition
	<	Definition_For
		<	"BasicShape"
		>
	+	New
		<	"Depth"
		,	Float
		>
	>	const extern
		Definition_For
		<	"BasicBody"
		>
	;
}
