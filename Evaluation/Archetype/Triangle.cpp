export module Evaluation.Archetype.Triangle;

import Evaluation.Shared;
import Evaluation.Archetype.BasicShape;

export import Archetype.Instance;

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
		<	"Triangle"
		>
	=	LayoutConfig
		<	"BasicShape"
		>
	+	Layout::InfoV
		<	"ComputeAreaMultiplier"
		,	Fraction
			<	1_sz
			,	2_sz
			>
		>
	;
}

export namespace
	Shapes2D
{
	using
		Triangle
	=	Archetype::Make
		<	"Triangle"
		>
	;
}

static_assert(AdditionalSize<Shapes2D::Triangle, 2, 1> == 4);
static_assert(SizeMinimal<Shapes2D::Triangle, 2, 1>);
