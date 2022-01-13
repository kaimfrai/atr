export module Evaluation.Archetype.Square;

import Evaluation.Shared;
import Evaluation.Archetype.Rectangle;

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
		<	"Square"
		>
	=	LayoutConfig
		<	"Rectangle"
		>
	-	Layout::InfoV
		<	"Height"
		,	Float
		>
	+	Layout::Alias
		<	"Height"
		,	"Width"
		>
	;
}

export namespace
	Shapes2D
{
	using
		Square
	=	Archetype::Make
		<	"Square"
		>
	;
}

static_assert(AdditionalSize<Shapes2D::Square, 1, 1> == 4);
static_assert(SizeMinimal<Shapes2D::Square, 1, 1>);
