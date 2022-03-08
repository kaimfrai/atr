import Test.Evaluation.SizeCheck;

import Evaluation.Replication;

// Bodies
static_assert(SizeMinimal<Bodies3D::Cube, 1, 1>);

static_assert(SizeMinimal<Bodies3D::Cuboid, 3, 1>);

static_assert(SizeMinimal<Bodies3D::Pyramid, 3, 1>);

static_assert(SizeMinimal<Bodies3D::Sphere, 1, 1>);

static_assert(SizeMinimal<Bodies3D::Cylinder, 2, 1>);

static_assert(SizeMinimal<Bodies3D::Cone, 2, 1>);

static_assert(SizeMinimal<Bodies3D::Ellipsoid, 3, 1>);

static_assert(SizeMinimal<Bodies3D::Head, 3, 3>);
