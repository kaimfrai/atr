add_module(
	VolumeComputer.hpp
PARTITION
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
	evaluation_replication
		Main.cpp
)
