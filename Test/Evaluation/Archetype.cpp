import Test.Evaluation.SizeCheck;
import ATR.Instance;

import Evaluation.Archetype.Square;
import Evaluation.Archetype.Rectangle;
import Evaluation.Archetype.Triangle;
import Evaluation.Archetype.Circle;
import Evaluation.Archetype.Ellipse;

import Evaluation.Archetype.Cube;
import Evaluation.Archetype.Cuboid;
import Evaluation.Archetype.Pyramid;
import Evaluation.Archetype.Sphere;
import Evaluation.Archetype.Cylinder;
import Evaluation.Archetype.Cone;
import Evaluation.Archetype.Ellipsoid;
import Evaluation.Archetype.Head;

static_assert(AdditionalSize<ATR::Type<"Square">, 1, 1> == 4);
static_assert(SizeMinimal<ATR::Type<"Square">, 1, 1>);

static_assert(AdditionalSize<ATR::Type<"Rectangle">, 2, 1> == 4);
static_assert(SizeMinimal<ATR::Type<"Rectangle">, 2, 1>);

static_assert(AdditionalSize<ATR::Type<"Triangle">, 2, 1> == 4);
static_assert(SizeMinimal<ATR::Type<"Triangle">, 2, 1>);

static_assert(AdditionalSize<ATR::Type<"Circle">, 1, 1> == 4);
static_assert(SizeMinimal<ATR::Type<"Circle">, 1, 1>);

static_assert(AdditionalSize<ATR::Type<"Ellipse">, 2, 1> == 4);
static_assert(SizeMinimal<ATR::Type<"Ellipse">, 2, 1>);


static_assert(AdditionalSize<ATR::Type<"Cube">, 1, 1> == 4);
static_assert(SizeMinimal<ATR::Type<"Cube">, 1, 1>);

static_assert(AdditionalSize<ATR::Type<"Cuboid">, 3, 1> == 4);
static_assert(SizeMinimal<ATR::Type<"Cuboid">, 3, 1>);

static_assert(AdditionalSize<ATR::Type<"Pyramid">, 3, 1> == 4);
static_assert(SizeMinimal<ATR::Type<"Pyramid">, 3, 1>);

static_assert(AdditionalSize<ATR::Type<"Sphere">, 1, 1> == 4);
static_assert(SizeMinimal<ATR::Type<"Sphere">, 1, 1>);

static_assert(AdditionalSize<ATR::Type<"Cylinder">, 2, 1> == 4);
static_assert(SizeMinimal<ATR::Type<"Cylinder">, 2, 1>);

static_assert(AdditionalSize<ATR::Type<"Cone">, 2, 1> == 4);
static_assert(SizeMinimal<ATR::Type<"Cone">, 2, 1>);

static_assert(AdditionalSize<ATR::Type<"Ellipsoid">, 3, 1> == 4);
static_assert(SizeMinimal<ATR::Type<"Ellipsoid">, 3, 1>);

static_assert(AdditionalSize<ATR::Type<"Head">, 3, 3> == 4);
static_assert(SizeMinimal<ATR::Type<"Head">, 3, 3>);

static_assert
(	ATR::Address<ATR::ID_T<"ComputeVolume">, ATR::Type<"Head"> const&>
==	ATR::Address<ATR::ID_T<"ComputeVolume">, ATR::Type<"Sphere"> const&>
);

