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
	Test.Meta.Arithmetic.BitIndexIterator
	BitIndexIterator.cpp
)
add_module_object_library(
	Test.Meta.Arithmetic.BitIndexView
	BitIndexView.cpp
)
