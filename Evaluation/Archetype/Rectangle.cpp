export module Evaluation.Archetype.Rectangle;

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
		<	"Rectangle"
		>
	=	LayoutConfig
		<	"BasicShape"
		>
	+	Layout::InfoV
		<	"ComputeAreaMultiplier"
		,	Fraction
			<>
		>
	;
}

export namespace
	Shapes2D
{
	using
		Rectangle
	=	Archetype::Make
		<	"Rectangle"
		>
	;
}

static_assert(AdditionalSize<Shapes2D::Rectangle, 2, 1> == 4);
static_assert(SizeMinimal<Shapes2D::Rectangle, 2, 1>);
