export module Evaluation.Archetype.Square.Layout;

export import Evaluation.Archetype.Rectangle.Layout;

export namespace
	Archetype
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"Square"
		>
	=	LayoutConfig<"Rectangle">
		(	Layout::Alias
			<	"Height"
			,	"Width"
			>
		)
	;
}
