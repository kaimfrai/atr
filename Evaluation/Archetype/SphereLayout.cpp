export module Evaluation.Archetype.Sphere.Layout;

export import ATR.Instance;
export import Evaluation.Archetype.Ellipsoid.Layout;
export import Evaluation.Archetype.ComputeVolume;

export namespace
	ATR
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"Sphere"
		>
	=	LayoutConfig
		<	"Ellipsoid"
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
