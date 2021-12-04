add_library(
	Meta.Literals.Test
OBJECT
	Integral.cpp
	FloatingPoint.cpp
)

add_dependencies(Meta.Literals.Test
	Meta.Literals
	Std.Algorithm
	Std.Limits
)
