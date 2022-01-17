export module Evaluation.Archetype.Cube.Layout;

export import Evaluation.Archetype.Cuboid.Layout;

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
		>({	Layout::Alias
			<	"Height"
			,	"Width"
			>
		,	Layout::Alias
			<	"Depth"
			,	"Width"
			>
		})
	;
}
