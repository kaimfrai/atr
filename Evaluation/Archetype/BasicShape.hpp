export module Evaluation.Archetype.BasicShape;

export import Evaluation.Shared.DataTypes;
export import ATR;

export namespace
	ATR
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"BasicShape"
		>
	=	Member
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
	;
}
