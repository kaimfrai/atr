export module Evaluation.Archetype.Circle.Layout;

export import Evaluation.Archetype.Ellipse.Layout;
export import Evaluation.Archetype.Rectangle.Layout;
export import Evaluation.Archetype.Square.Layout;

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
		>
		//	subtract Height member
	-	(	LayoutConfig
			<	"Rectangle"
			>
		-	LayoutConfig
			<	"Square"
			>
		)
		//	add Height alias
	+	(	LayoutConfig
			<	"Square"
			>
		-	LayoutConfig
			<	"Rectangle"
			>
		)
	;
}
