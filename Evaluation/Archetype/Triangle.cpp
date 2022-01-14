export module Evaluation.Archetype.Triangle;

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
		<	"Triangle"
		>
	=	LayoutConfig
		<	"BasicShape"
		>
	+	Layout::InfoV
		<	"ComputeAreaMultiplier"
		,	Fraction
			<	1z
			,	2z
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
