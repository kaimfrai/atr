add_module(
	Data.cpp
)

add_library(
	Meta.Literals.Test
OBJECT
	Integral.cpp
	FloatingPoint.cpp
)

add_module_dependencies(
	Meta.Literals.Test
)
