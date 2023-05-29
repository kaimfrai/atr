find_path(POLYMORPHIC_INCLUDE_PATH "polymorphic.hpp" PATHS "${PROJECT_SOURCE_DIR}/../cpp-from-the-sky-down/metaprogrammed_polymorphism/" REQUIRED DOC "Path for polymorphic includes")

set_source_files_properties(
	${POLYMORPHIC_INCLUDE_PATH}/polymorphic.hpp
PROPERTIES
INCLUDE_DIRECTORIES
	"${POLYMORPHIC_INCLUDE_PATH}"
)

if	(NOT FASTER_BUILD_SPEED)
	set_source_files_properties(
		${POLYMORPHIC_INCLUDE_PATH}/polymorphic.hpp
	PROPERTIES
	COMPILE_OPTIONS
		"$<$<CXX_COMPILER_ID:Clang>:-Wno-cast-function-type-strict>"
	)
endif()

force_import_std(
	"${POLYMORPHIC_INCLUDE_PATH}/polymorphic.hpp"
)

add_user_header_unit(
	"${POLYMORPHIC_INCLUDE_PATH}/polymorphic.hpp"
)

set_source_files_properties(
	Library.cpp
PROPERTIES
INCLUDE_DIRECTORIES
	"${POLYMORPHIC_INCLUDE_PATH}"
)

add_module(
	Library.cpp
)

add_module(
	Polymorphic.cpp
)

add_module_executable(
	polymorphic
		Main.cpp
)

target_compile_options(
	polymorphic
PRIVATE
	${MERGE_IDENTICAL_FUNCTIONS_COMPILE_OPTIONS}
)

target_link_options(
	polymorphic
PRIVATE
	${MERGE_IDENTICAL_FUNCTIONS_LINK_FLAGS}
)
