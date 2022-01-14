export module Evaluation.Archetype.Cube.Layout;

export import Evaluation.Archetype.Cuboid.Layout;
export import Evaluation.Archetype.Rectangle.Layout;
export import Evaluation.Archetype.Square.Layout;

export namespace
	Archetype
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"Cube"
		>
	=	LayoutConfig
		<	"Cuboid"
		>
	-	Layout::InfoV
		<	"Depth"
		,	Float
		>
	+	Layout::Alias
		<	"Depth"
		,	"Width"
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
