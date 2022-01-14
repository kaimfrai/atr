export module Evaluation.Archetype.Triangle;

export import Archetype.Instance;
export import Evaluation.Archetype.BasicShape;

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
