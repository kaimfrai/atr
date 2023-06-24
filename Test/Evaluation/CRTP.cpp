import Test.Evaluation.SizeCheck;

import Evaluation.CRTP.Square;
import Evaluation.CRTP.Rectangle;
import Evaluation.CRTP.Triangle;
import Evaluation.CRTP.Circle;
import Evaluation.CRTP.Ellipse;
import Evaluation.CRTP.Cube;
import Evaluation.CRTP.Cuboid;
import Evaluation.CRTP.Pyramid;
import Evaluation.CRTP.Sphere;
import Evaluation.CRTP.Cylinder;
import Evaluation.CRTP.Cone;
import Evaluation.CRTP.Ellipsoid;
import Evaluation.CRTP.Head;

//	Shapes
static_assert(AdditionalSize<Shapes2D::Square, 1, 1> == 0);
static_assert(SizeMinimal<Shapes2D::Square, 1, 1>);

static_assert(AdditionalSize<Shapes2D::Rectangle, 2, 1> == 0);
static_assert(SizeMinimal<Shapes2D::Rectangle, 2, 1>);

static_assert(AdditionalSize<Shapes2D::Triangle, 2, 1> == 0);
static_assert(SizeMinimal<Shapes2D::Triangle, 2, 1>);

static_assert(AdditionalSize<Shapes2D::Circle, 1, 1> == 0);
static_assert(SizeMinimal<Shapes2D::Circle, 1, 1>);

static_assert(AdditionalSize<Shapes2D::Ellipse, 2, 1> == 0);
static_assert(SizeMinimal<Shapes2D::Ellipse, 2, 1>);

//	Bodies
static_assert(AdditionalSize<Bodies3D::Cube, 1, 1> == 0);
static_assert(SizeMinimal<Bodies3D::Cube, 1, 1>);

static_assert(AdditionalSize<Bodies3D::Cuboid, 3, 1> == 0);
static_assert(SizeMinimal<Bodies3D::Cuboid, 3, 1>);

static_assert(AdditionalSize<Bodies3D::Pyramid, 3, 1> == 0);
static_assert(SizeMinimal<Bodies3D::Pyramid, 3, 1>);

static_assert(AdditionalSize<Bodies3D::Sphere, 1, 1> == 0);
static_assert(SizeMinimal<Bodies3D::Sphere, 1, 1>);

static_assert(AdditionalSize<Bodies3D::Cylinder, 2, 1> == 0);
static_assert(SizeMinimal<Bodies3D::Cylinder, 2, 1>);

static_assert(AdditionalSize<Bodies3D::Cone, 2, 1> == 0);
static_assert(SizeMinimal<Bodies3D::Cone, 2, 1>);

static_assert(AdditionalSize<Bodies3D::Ellipsoid, 3, 1> == 0);
static_assert(SizeMinimal<Bodies3D::Ellipsoid, 3, 1>);

static_assert(AdditionalSize<Bodies3D::Head, 3, 2> == 16);
static_assert(not SizeMinimal<Bodies3D::Head, 3, 2>);
