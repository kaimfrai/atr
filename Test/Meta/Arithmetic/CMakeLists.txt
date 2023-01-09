add_module(
	Data.hpp
)

add_module_object_library(
	Test.Meta.Arithmetic.Integer
	Integer.cpp
)

add_module_object_library(
	Test.Meta.Arithmetic.Integral
	Integral.cpp
)

add_module_object_library(
	Test.Meta.Arithmetic.FloatingPoint
	FloatingPoint.cpp
)
add_module_object_library(
	Test.Meta.Arithmetic.OneIndexIterator
	OneIndexIterator.cpp
)
add_module_object_library(
	Test.Meta.Arithmetic.OneIndexView
	OneIndexView.cpp
)
