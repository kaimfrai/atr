export module Evaluation.Archetype.Sphere.Layout;

export import Archetype.Instance;
export import Evaluation.Archetype.Ellipsoid.Layout;
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
