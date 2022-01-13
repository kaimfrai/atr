export module Evaluation.Archetype.BasicBody;

export import Evaluation.Shared;
export import Evaluation.Archetype.BasicShape;

export import <Archetype/LayoutInfo.hpp>;

export namespace
	Archetype
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"BasicBody"
		>
	=	LayoutConfig
		<	"BasicShape"
		>
	+	Layout::InfoV
		<	"Depth"
		,	Float
		>
	;
}
