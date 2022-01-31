export module Evaluation.Archetype.BasicShape;

export import Evaluation.Shared.DataTypes;
export import ATR.LayoutInfo;
export import ATR.Instance;

export namespace
	ATR
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"BasicShape"
		>
	=	InfoV
		<	"Height"
		,	Float
		>
	+	InfoV
		<	"Width"
		,	Float
		>
	+	InfoV
		<	"Color"
		,	RGBAColor
		>
	;
}
