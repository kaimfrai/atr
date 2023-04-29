add_single_file_modules(
	IShape.cpp
	BasicShape.cpp
	CircularShape.cpp
	RectangularShape.cpp
	TriangularShape.cpp

	Circle.cpp
	Ellipse.cpp
	Rectangle.cpp
	Square.cpp
	Triangle.cpp

	IBody.cpp
	BasicBody.cpp
	ExtendedShape.cpp
	CubicBody.cpp
	PyramidicBody.cpp
	SphericBody.cpp

	Cone.cpp
	Cuboid.cpp
	Cube.cpp
	Cylinder.cpp
	Ellipsoid.cpp
	Sphere.cpp
	Head.cpp
	Pyramid.cpp
)

add_module_executable(
	evaluation_virtual
		Main.cpp
)

target_compile_options(
	evaluation_virtual
PRIVATE
	${MERGE_IDENTICAL_FUNCTIONS_COMPILE_OPTIONS}
)

target_link_options(
	evaluation_virtual
PRIVATE
	${MERGE_IDENTICAL_FUNCTIONS_LINK_FLAGS}
)
