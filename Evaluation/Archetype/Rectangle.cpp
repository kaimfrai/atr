export module Evaluation.Archetype.Rectangle;

import Evaluation.Shared;
import Evaluation.Archetype.BasicShape;

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
