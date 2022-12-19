export module Evaluation.Archetype:Sphere;

export import :Ellipsoid;

export import ATR;

export namespace
	ATR
{
	template<>
	DefineMembers
	<	LayoutConfig
		<	"Ellipsoid"
		>(	Alias
			<	"Height"
			,	"Width"
			>
		)(	Alias
			<	"Depth"
			,	"Width"
			>
		)
	>	extern
		LayoutConfig
		<	"Sphere"
		>
	;
}
