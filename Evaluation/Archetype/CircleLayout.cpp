export module Evaluation.Archetype.Circle.Layout;

export import Evaluation.Archetype.Ellipse.Layout;

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
