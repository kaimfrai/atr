find_path(DYNO_INCLUDE_PATH "dyno.hpp" PATHS "${PROJECT_SOURCE_DIR}/../dyno/include/" REQUIRED DOC "Path for dyno includes")

set_source_files_properties(
	${DYNO_INCLUDE_PATH}/dyno.hpp
PROPERTIES
INCLUDE_DIRECTORIES
	"${DYNO_INCLUDE_PATH}"
)

if (NOT FASTER_BUILD_SPEED)
	set_source_files_properties(
		${DYNO_INCLUDE_PATH}/dyno.hpp
	PROPERTIES
	COMPILE_OPTIONS
		"$<$<CXX_COMPILER_ID:Clang>:-Wno-gnu-string-literal-operator-template;-Wno-shadow-uncaptured-local;-Wno-reserved-identifier;-Wno-implicit-int-conversion;-Wno-missing-variable-declarations>"
	)
endif()

force_import_std(
	"${DYNO_INCLUDE_PATH}/dyno.hpp"
)

add_user_header_unit(
	"${DYNO_INCLUDE_PATH}/dyno.hpp"
)

set_source_files_properties(
	Library.cpp
PROPERTIES
INCLUDE_DIRECTORIES
	"${DYNO_INCLUDE_PATH}"
)

add_module(
	Library.cpp
)

add_module(
	Dyno.cpp
)
