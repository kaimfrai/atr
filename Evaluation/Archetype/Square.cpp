export module Evaluation.Archetype.Square;

import Evaluation.Shared;
import Evaluation.Archetype.Rectangle;

export import ID.StringLiteral;
export import ID.Data;
export import Archetype.Instance;
export import Layout.LayoutCreator;

export import Pack.SplitBest;
export import Pack.Filter;
export import Pack.Sort;
export import Pack.Accumulate;

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
