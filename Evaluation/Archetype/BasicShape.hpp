export module Evaluation.Archetype.BasicShape;

export import Evaluation.Shared.DataTypes;
export import ATR.DataMember;
export import ATR.Instance;

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
