export module Evaluation.Archetype.Sphere;

import Evaluation.Shared;
import Evaluation.Archetype.Ellipsoid;
import Evaluation.Archetype.Cuboid;
import Evaluation.Archetype.Cube;
import Evaluation.Archetype.ComputeVolume;

export import Archetype.Instance;
import Archetype.LayoutInfo;
import Function.Address;

#include <Layout/LayoutCreator.hpp>

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

export namespace
	Bodies3D
{
	using
		Sphere
	=	Archetype::Make
		<	"Sphere"
		>
	;
}

// export namespace
// 	Function
// {
// 	template<>
// 	auto constexpr
// 	(	Invoke
// 		<	ID::FuncT<"ComputeVolume">
// 		,	Bodies3D::Sphere const&
// 		>
// 	)	(	Bodies3D::Sphere const&
// 		)
// 	noexcept
// 	->	decltype(auto)
// 	;
// }

static_assert(AdditionalSize<Bodies3D::Sphere, 1, 1> == 4);
static_assert(SizeMinimal<Bodies3D::Sphere, 1, 1>);
