add_module(Product.cpp)

add_module(ComputeArea.cpp)
add_module(ComputeVolume.cpp)

add_module(BasicShape.cpp)
add_module(CircleLayout.cpp)
add_module(EllipseLayout.cpp)
add_module(RectangleLayout.cpp)
add_module(SquareLayout.cpp)
add_module(TriangleLayout.cpp)

add_module(Circle.cpp)
add_module(Ellipse.cpp)
add_module(Rectangle.cpp)
add_module(Square.cpp)
add_module(Triangle.cpp)

add_module(BasicBody.cpp)
add_module(ConeLayout.cpp)
add_module(CubeLayout.cpp)
add_module(CuboidLayout.cpp)
add_module(CylinderLayout.cpp)
add_module(EllipsoidLayout.cpp)
add_module(HeadLayout.cpp)
add_module(PyramidLayout.cpp)
add_module(SphereLayout.cpp)

add_module(Cone.cpp)
add_module(Cube.cpp)
add_module(Cuboid.cpp)
add_module(Cylinder.cpp)
add_module(Ellipsoid.cpp)
add_module(Head.cpp)
add_module(Pyramid.cpp)
add_module(Sphere.cpp)

add_executable(
	evaluation_archetype
		Main.cpp
)
target_compile_options(
	evaluation_archetype
		PRIVATE
		-Wno-error
		-Wno-everything
)
add_module_dependencies(evaluation_archetype)
