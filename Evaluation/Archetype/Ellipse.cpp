export module Evaluation.Archetype.Ellipse;

export import Evaluation.Shared.SizeCheck;
export import Archetype.Instance;
export import Evaluation.Archetype.Ellipse.Layout;

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
