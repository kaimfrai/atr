export module Evaluation.Archetype.Circle;

export import Evaluation.Archetype.Ellipse;

export namespace
	ATR
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"Circle"
		>
	=	LayoutConfig
		<	"Ellipse"
		>(	Alias
			<	"Height"
			,	"Width"
			>
		)
	;
}
