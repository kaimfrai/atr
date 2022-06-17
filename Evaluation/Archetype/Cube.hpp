export module Evaluation.Archetype:Cube;

export import :Cuboid;

export namespace
	ATR
{
	template<>
	DefineMembers
	<	LayoutConfig
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
	>	extern
		LayoutConfig
		<	"Cube"
		>
	;
}
