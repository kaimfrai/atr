export module Evaluation.Archetype.Triangle;

export import Evaluation.Shared.SizeCheck;
export import Archetype.Instance;
export import Evaluation.Archetype.Triangle.Layout;

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
