add_header_unit(
	polymorphic.hpp
	"../../../cpp-from-the-sky-down/metaprogrammed_polymorphism/"
)

add_module(
	Library.hpp
INCLUDES
	"../../../cpp-from-the-sky-down/metaprogrammed_polymorphism/"
HEADER_UNITS
	${MODULE_CACHE_PATH}/polymorphic${MODULE_INTERFACE_EXTENSION}
)

add_module(
	Polymorphic.hpp
)

add_module_executable(
	evaluation_polymorphic
		Main.cpp
)
