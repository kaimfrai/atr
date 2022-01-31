export module Evaluation.Archetype.Cube.Layout;

export import Evaluation.Archetype.Cuboid.Layout;

export namespace
	ATR
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"Cube"
		>
	=	LayoutConfig
		<	"Cuboid"
		>({	Alias
			<	"Height"
			,	"Width"
			>
		,	Alias
			<	"Depth"
			,	"Width"
			>
		})
	;
}
