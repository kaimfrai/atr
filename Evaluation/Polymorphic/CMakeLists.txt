find_path(POLYMORPHIC_INCLUDE_PATH "polymorphic.hpp" PATHS "${PROJECT_SOURCE_DIR}/../cpp-from-the-sky-down/metaprogrammed_polymorphism/" REQUIRED DOC "Path for polymorphic includes")

set_source_files_properties(
	${POLYMORPHIC_INCLUDE_PATH}/polymorphic.hpp
PROPERTIES
INCLUDE_DIRECTORIES
	"${POLYMORPHIC_INCLUDE_PATH}"
COMPILE_OPTIONS
	"$<$<CXX_COMPILER_ID:Clang>:-Wno-cast-function-type-strict;-Wno-unsafe-buffer-usage>"
)

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
	evaluation_polymorphic
		Main.cpp
)
