add_header_unit(
	boost.hpp
	"./"
)

add_module(
	Library.hpp
HEADER_UNITS
	${MODULE_CACHE_PATH}/boost${MODULE_INTERFACE_EXTENSION}
)

add_module(
	TypeErasure.hpp
)

add_module_executable(
	evaluation_type_erasure
		Main.cpp
)
