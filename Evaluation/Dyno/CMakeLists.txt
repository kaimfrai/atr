add_header_unit(
	dyno.hpp
	"../../../dyno/include/"
)

add_module(
	Library.hpp
INCLUDES
	"../../../dyno/include/"
HEADER_UNITS
	${MODULE_CACHE_PATH}/dyno${MODULE_INTERFACE_EXTENSION}
)

add_module(
	Dyno.hpp
)

add_module_executable(
	evaluation_dyno
		Main.cpp
)
