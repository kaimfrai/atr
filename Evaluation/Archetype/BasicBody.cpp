export module Evaluation.Archetype.BasicBody;

import Evaluation.Archetype.BasicShape;
import Evaluation.Shared.DataTypes;

import ATR.Member.List;
import ATR.Member.Union;
import ATR.Member.Definition;

export namespace
	ATR::Member
{
	template<>
	Definition
	<	All_Of
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
