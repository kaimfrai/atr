import Test.Evaluation.SizeCheck;

import Evaluation.Replication.Square;
import Evaluation.Replication.Rectangle;
import Evaluation.Replication.Triangle;
import Evaluation.Replication.Circle;
import Evaluation.Replication.Ellipse;
import Evaluation.Replication.Cube;
import Evaluation.Replication.Cuboid;
import Evaluation.Replication.Pyramid;
import Evaluation.Replication.Sphere;
import Evaluation.Replication.Cylinder;
import Evaluation.Replication.Cone;
import Evaluation.Replication.Ellipsoid;
import Evaluation.Replication.Head;

//	Shapes
static_assert(SizeMinimal<Bodies3D::Square, 1, 1, 1>);

static_assert(SizeMinimal<Bodies3D::Rectangle, 2, 1, 1>);

static_assert(SizeMinimal<Bodies3D::Triangle, 2, 1, 1>);

static_assert(SizeMinimal<Bodies3D::Circle, 1, 1, 1>);

static_assert(SizeMinimal<Bodies3D::Ellipse, 2, 1, 1>);

// Bodies
static_assert(SizeMinimal<Bodies3D::Cube, 1, 1, 1>);

static_assert(SizeMinimal<Bodies3D::Cuboid, 3, 1, 1>);

static_assert(SizeMinimal<Bodies3D::Pyramid, 3, 1, 1>);

static_assert(SizeMinimal<Bodies3D::Sphere, 1, 1, 1>);

static_assert(SizeMinimal<Bodies3D::Cylinder, 2, 1, 1>);

static_assert(SizeMinimal<Bodies3D::Cone, 2, 1, 1>);

static_assert(SizeMinimal<Bodies3D::Ellipsoid, 3, 1, 1>);

static_assert(SizeMinimal<Bodies3D::Head, 3, 2, 3>);
