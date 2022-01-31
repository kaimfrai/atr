export module Evaluation.Archetype.Square;

export import Evaluation.Shared.SizeCheck;
export import ATR.Instance;
export import Evaluation.Archetype.Square.Layout;

export namespace
	Shapes2D
{
	using
		Square
	=	ATR::Type
		<	"Square"
		>
	;
}

static_assert(AdditionalSize<Shapes2D::Square, 1, 1> == 4);
static_assert(SizeMinimal<Shapes2D::Square, 1, 1>);
