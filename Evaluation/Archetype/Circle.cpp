export module Evaluation.Archetype.Circle;

export import Evaluation.Shared.SizeCheck;
export import ATR.Instance;
export import Evaluation.Archetype.Circle.Layout;

export namespace
	Shapes2D
{
	using
		Circle
	=	ATR::Type
		<	"Circle"
		>
	;
}

static_assert(AdditionalSize<Shapes2D::Circle, 1, 1> == 4);
static_assert(SizeMinimal<Shapes2D::Circle, 1, 1>);
