import Test.Evaluation.SizeCheck;

import Evaluation.Virtual.Square;
import Evaluation.Virtual.Rectangle;
import Evaluation.Virtual.Triangle;
import Evaluation.Virtual.Circle;
import Evaluation.Virtual.Ellipse;
import Evaluation.Virtual.Cube;
import Evaluation.Virtual.Cuboid;
import Evaluation.Virtual.Pyramid;
import Evaluation.Virtual.Sphere;
import Evaluation.Virtual.Cylinder;
import Evaluation.Virtual.Cone;
import Evaluation.Virtual.Ellipsoid;
import Evaluation.Virtual.Head;

static_assert(AdditionalSize<Shapes2D::Square, 1, 1> == 12);
static_assert(not SizeMinimal<Shapes2D::Square, 1, 1>);

static_assert(AdditionalSize<Shapes2D::Rectangle, 2, 1> == 8);
static_assert(not SizeMinimal<Shapes2D::Rectangle, 2, 1>);

static_assert(AdditionalSize<Shapes2D::Triangle, 2, 1> == 8);
static_assert(not SizeMinimal<Shapes2D::Triangle, 2, 1>);

static_assert(AdditionalSize<Shapes2D::Circle, 1, 1> == 12);
static_assert(not SizeMinimal<Shapes2D::Circle, 1, 1>);

static_assert(AdditionalSize<Shapes2D::Ellipse, 2, 1> == 8);
static_assert(not SizeMinimal<Shapes2D::Ellipse, 2, 1>);

static_assert(AdditionalSize<Bodies3D::Cube, 1, 1> == 20);
static_assert(not SizeMinimal<Bodies3D::Cube, 1, 1>);

static_assert(AdditionalSize<Bodies3D::Cuboid, 3, 1> == 20);
static_assert(not SizeMinimal<Bodies3D::Cuboid, 3, 1>);

static_assert(AdditionalSize<Bodies3D::Pyramid, 3, 1> == 20);
static_assert(not SizeMinimal<Bodies3D::Pyramid, 3, 1>);

static_assert(AdditionalSize<Bodies3D::Sphere, 1, 1> == 20);
static_assert(not SizeMinimal<Bodies3D::Sphere, 1, 1>);

static_assert(AdditionalSize<Bodies3D::Cylinder, 2, 1> == 24);
static_assert(not SizeMinimal<Bodies3D::Cylinder, 2, 1>);

static_assert(AdditionalSize<Bodies3D::Cone, 2, 1> == 24);
static_assert(not SizeMinimal<Bodies3D::Cone, 2, 1>);

static_assert(AdditionalSize<Bodies3D::Ellipsoid, 3, 1> == 20);
static_assert(not SizeMinimal<Bodies3D::Ellipsoid, 3, 1>);

static_assert(AdditionalSize<Bodies3D::Head, 3, 2> == 76);
static_assert(not SizeMinimal<Bodies3D::Head, 3, 2>);
