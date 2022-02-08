export module Evaluation.Archetype.Square;

export import Evaluation.Archetype.Rectangle;

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
