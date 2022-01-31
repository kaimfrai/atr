export module Evaluation.Archetype.Square.Layout;

export import Evaluation.Archetype.Rectangle.Layout;

export namespace
	ATR
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"Square"
		>
	=	LayoutConfig<"Rectangle">
		(	Alias
			<	"Height"
			,	"Width"
			>
		)
	;
}
