export module Evaluation.Archetype.Ellipse;

export import Archetype.Instance;
export import Evaluation.Shared;
export import Evaluation.Archetype.BasicShape;

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
			<	1z
			,	4z
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
