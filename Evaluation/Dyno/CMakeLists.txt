find_path(DYNO_INCLUDE_PATH "dyno.hpp" PATHS "${PROJECT_SOURCE_DIR}/../dyno/include/" REQUIRED DOC "Path for dyno includes")

set_source_files_properties(
	${DYNO_INCLUDE_PATH}/dyno.hpp
PROPERTIES
INCLUDE_DIRECTORIES
	"${DYNO_INCLUDE_PATH}"
COMPILE_OPTIONS
	"$<$<CXX_COMPILER_ID:Clang>:-Wno-gnu-string-literal-operator-template;-Wno-shadow-uncaptured-local;-Wno-reserved-identifier;-Wno-implicit-int-conversion;-Wno-missing-variable-declarations>"
)

add_user_header_unit(
	"${DYNO_INCLUDE_PATH}/dyno.hpp"
)

set_source_files_properties(
	Library.hpp
PROPERTIES
INCLUDE_DIRECTORIES
	"${DYNO_INCLUDE_PATH}"
)

add_module(
	Library.hpp
)

add_module(
	Dyno.hpp
)

add_module_executable(
	evaluation_dyno
		Main.cpp
)
