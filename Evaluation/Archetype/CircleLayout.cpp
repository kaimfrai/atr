export module Evaluation.Archetype.Circle.Layout;

export import Evaluation.Archetype.Ellipse.Layout;

export namespace
	Archetype
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"Circle"
		>
	=	LayoutConfig
		<	"Ellipse"
		>(	Layout::Alias
			<	"Height"
			,	"Width"
			>
		)
	;
}
