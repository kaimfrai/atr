export module Evaluation.Archetype.BasicShape;

import Evaluation.Shared;

export import <Archetype/LayoutInfo.hpp>;

export namespace
	Archetype
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"BasicShape"
		>
	=	Layout::InfoV
		<	"Height"
		,	Float
		>
	+	Layout::InfoV
		<	"Width"
		,	Float
		>
	+	Layout::InfoV
		<	"Color"
		,	RGBAColor
		>
	;
}
