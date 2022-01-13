export module Evaluation.Archetype.Circle;

import Evaluation.Shared;
import Evaluation.Archetype.Ellipse;
import Evaluation.Archetype.Rectangle;
import Evaluation.Archetype.Square;

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
		<	"Circle"
		>
	=	LayoutConfig
		<	"Ellipse"
		>
		//	subtract Height member
	-	(	LayoutConfig
			<	"Rectangle"
			>
		-	LayoutConfig
			<	"Square"
			>
		)
		//	add Height alias
	+	(	LayoutConfig
			<	"Square"
			>
		-	LayoutConfig
			<	"Rectangle"
			>
		)
	;
}

export namespace
	Shapes2D
{
	using
		Circle
	=	Archetype::Make
		<	"Circle"
		>
	;
}

static_assert(AdditionalSize<Shapes2D::Circle, 1, 1> == 4);
static_assert(SizeMinimal<Shapes2D::Circle, 1, 1>);
