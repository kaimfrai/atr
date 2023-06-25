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

import Meta.ID;
import Meta.String.Literal;

template
	<	::Meta::String::Literal
			t_vTypeName
	>
using
	Type
=	::ATR::Instance
	<	::Meta::ID
		<	t_vTypeName
		>
	>
;

static_assert(AdditionalSize<Type<"Square">, 1, 1, 1> == 0);
static_assert(SizeMinimal<Type<"Square">, 1, 1, 1>);

static_assert(AdditionalSize<Type<"Rectangle">, 2, 1, 1> == 0);
static_assert(SizeMinimal<Type<"Rectangle">, 2, 1, 1>);

static_assert(AdditionalSize<Type<"Triangle">, 2, 1, 1> == 0);
static_assert(SizeMinimal<Type<"Triangle">, 2, 1, 1>);

static_assert(AdditionalSize<Type<"Circle">, 1, 1, 1> == 0);
static_assert(SizeMinimal<Type<"Circle">, 1, 1, 1>);

static_assert(AdditionalSize<Type<"Ellipse">, 2, 1, 1> == 0);
static_assert(SizeMinimal<Type<"Ellipse">, 2, 1, 1>);


static_assert(AdditionalSize<Type<"Cube">, 1, 1, 1> == 0);
static_assert(SizeMinimal<Type<"Cube">, 1, 1, 1>);

static_assert(AdditionalSize<Type<"Cuboid">, 3, 1, 1> == 0);
static_assert(SizeMinimal<Type<"Cuboid">, 3, 1, 1>);

static_assert(AdditionalSize<Type<"Pyramid">, 3, 1, 1> == 0);
static_assert(SizeMinimal<Type<"Pyramid">, 3, 1, 1>);

static_assert(AdditionalSize<Type<"Sphere">, 1, 1, 1> == 0);
static_assert(SizeMinimal<Type<"Sphere">, 1, 1, 1>);

static_assert(AdditionalSize<Type<"Cylinder">, 2, 1, 1> == 0);
static_assert(SizeMinimal<Type<"Cylinder">, 2, 1, 1>);

static_assert(AdditionalSize<Type<"Cone">, 2, 1, 1> == 0);
static_assert(SizeMinimal<Type<"Cone">, 2, 1, 1>);

static_assert(AdditionalSize<Type<"Ellipsoid">, 3, 1, 1> == 0);
static_assert(SizeMinimal<Type<"Ellipsoid">, 3, 1, 1>);

static_assert(AdditionalSize<Type<"Head">, 1, 2, 3> == 0);
static_assert(SizeMinimal<Type<"Head">, 1, 2, 3>);
