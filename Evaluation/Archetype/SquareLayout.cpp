export module Evaluation.Archetype.Square.Layout;

export import Evaluation.Shared;
export import Evaluation.Archetype.Rectangle.Layout;

export namespace
	Archetype
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"Square"
		>
	=	LayoutConfig
		<	"Rectangle"
		>
	-	Layout::InfoV
		<	"Height"
		,	Float
		>
	+	Layout::Alias
		<	"Height"
		,	"Width"
		>
	;
}
