add_module(
	Data.cpp
)

add_library(
	Test.Meta.Literals
OBJECT
	Integral.cpp
	FloatingPoint.cpp
)

add_module_dependencies(
	Test.Meta.Literals
)
