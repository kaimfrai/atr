export module Evaluation.Archetype.Sphere.Layout;

export import Archetype.Instance;
export import Evaluation.Archetype.Ellipsoid.Layout;
export import Evaluation.Archetype.Cuboid.Layout;
export import Evaluation.Archetype.Cube.Layout;
export import Evaluation.Archetype.ComputeVolume;

export namespace
	Archetype
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"Sphere"
		>
	=	LayoutConfig
		<	"Ellipsoid"
		>
		//	subtract Height & Depth member
	-	(	LayoutConfig
			<	"Cuboid"
			>
		-	LayoutConfig
			<	"Cube"
			>
		)
		//	add Height & Depth alias
	+	(	LayoutConfig
			<	"Cube"
			>
		-	LayoutConfig
			<	"Cuboid"
			>
		)
	;
}
