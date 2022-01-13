export module Evaluation.Archetype.Ellipse;

import Evaluation.Shared;
import Evaluation.Archetype.BasicShape;

import <Archetype/Instance.hpp>;

export namespace
	Archetype
{
	template<>
	auto constexpr inline
		LayoutConfig
		<	"Ellipse"
		>
	=	LayoutConfig
		<	"BasicShape"
		>
	+	Layout::InfoV
		<	"ComputeAreaMultiplier"
		,	πFraction
			<	1_sz
			,	4_sz
			>
		>
	;
}

export namespace
	Shapes2D
{
	using
		Ellipse
	=	Archetype::Make
		<	"Ellipse"
		>
	;
}

static_assert(AdditionalSize<Shapes2D::Ellipse, 2, 1> == 4);
static_assert(SizeMinimal<Shapes2D::Ellipse, 2, 1>);
