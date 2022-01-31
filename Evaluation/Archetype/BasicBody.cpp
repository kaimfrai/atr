export module Evaluation.Archetype.BasicBody;

export import Evaluation.Shared.DataTypes;
export import Evaluation.Archetype.BasicShape;

export namespace
	ATR
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"BasicBody"
		>
	=	LayoutConfig
		<	"BasicShape"
		>
	+	InfoV
		<	"Depth"
		,	Float
		>
	;
}
