export module Evaluation.Archetype.Cylinder;

import Evaluation.Shared;
import Evaluation.Archetype.BasicBody;
import Evaluation.Archetype.Ellipse;
import Evaluation.Archetype.Circle;
import Evaluation.Archetype.ComputeVolume;

export import Archetype.Instance;
import Archetype.LayoutInfo;
import Function.Address;

export import Layout.LayoutCreator;

#include <Pack/SplitBest.hpp>
#include <Pack/Filter.hpp>
#include <Pack/Sort.hpp>
#include <Pack/Accumulate.hpp>
#include <ID/StringLiteral.hpp>
#include <ID/Data.hpp>

export namespace
	Archetype
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"Cylinder"
		>
	=	LayoutConfig
		<	"BasicBody"
		>
	-	(	LayoutConfig
			<	"Ellipse"
			>
		-	LayoutConfig
			<	"Circle"
			>
		)
	+	(	LayoutConfig
			<	"Circle"
			>
		-	LayoutConfig
			<	"Ellipse"
			>
		)
	+	Layout::InfoV
		<	"ComputeVolumeMultiplier"
		,	πFraction
			<	1_sz
			,	4_sz
			>
		>
	;
}

export namespace
	Bodies3D
{
	using
		Cylinder
	=	Archetype::Make
		<	"Cylinder"
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
// 		,	Bodies3D::Cylinder const&
// 		>
// 	)	(	Bodies3D::Cylinder const&
// 		)
// 	noexcept
// 	->	decltype(auto)
// 	;
// }

static_assert(AdditionalSize<Bodies3D::Cylinder, 2, 1> == 4);
static_assert(SizeMinimal<Bodies3D::Cylinder, 2, 1>);
