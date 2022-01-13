export module Evaluation.Archetype.Pyramid;

import Evaluation.Shared;
import Evaluation.Archetype.BasicBody;
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
		<	"Pyramid"
		>
	=	LayoutConfig
		<	"BasicBody"
		>
	+	Layout::InfoV
		<	"ComputeVolumeMultiplier"
		,	Fraction
			<	1_sz
			,	3_sz
			>
		>
	;
}

export namespace
	Bodies3D
{
	using
		Pyramid
	=	Archetype::Make
		<	"Pyramid"
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
// 		,	Bodies3D::Pyramid const&
// 		>
// 	)	(	Bodies3D::Pyramid const&
// 		)
// 	noexcept
// 	->	decltype(auto)
// 	;
// }

static_assert(AdditionalSize<Bodies3D::Pyramid, 3, 1> == 4);
static_assert(SizeMinimal<Bodies3D::Pyramid, 3, 1>);
