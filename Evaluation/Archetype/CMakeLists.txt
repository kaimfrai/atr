add_module(Archetype.hpp
PARTITION
	Product.hpp

	ComputeArea.hpp
	ComputeVolume.hpp

	BasicShape.hpp
	Circle.hpp
	Ellipse.hpp
	Rectangle.hpp
	Square.hpp
	Triangle.hpp

	BasicBody.hpp
	Cone.hpp
	Cube.hpp
	Cuboid.hpp
	Cylinder.hpp
	Ellipsoid.hpp
	Head.hpp
	Pyramid.hpp
	Sphere.hpp
)

add_module_executable(
	evaluation_archetype
		Main.cpp
)
