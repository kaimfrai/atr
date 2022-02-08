export module Evaluation.Archetype.Cube;

export import Evaluation.Archetype.Cuboid;

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
